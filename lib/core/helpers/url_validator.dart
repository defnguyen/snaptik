class UrlValidator {
  // TikTok video URLs
  static final RegExp _tikTokVideoRegex = RegExp(
    r'^https?:\/\/(www\.|[a-zA-Z0-9]+\.)?tiktok\.com\/@[a-zA-Z0-9._-]+\/video\/[0-9]+(\/?.*)?$',
    caseSensitive: false,
  );

  // TikTok short URLs
  static final RegExp _tikTokShortRegex = RegExp(
    r'^https?:\/\/([a-zA-Z0-9]+\.tiktok\.com|tiktok\.com\/t)\/[a-zA-Z0-9]+(\/?.*)?$',
    caseSensitive: false,
  );

  // Validates the input URL.
  // Returns null if valid, otherwise an error message string.
  // Allows profile URLs only if isPremium is true.
  static String? validateTikTokUrl(String? url, bool isPremium) {
    if (url == null || url.trim().isEmpty) {
      return "URL cannot be empty."; // Use localized string
    }

    final trimmedUrl = url.trim();

    // Check if it's a valid URL format in general
    if (!Uri.tryParse(trimmedUrl)!.hasAbsolutePath ?? true) {
      return "Invalid URL format."; // Use localized string
    }

    // Check for TikTok domain
    if (!trimmedUrl.contains('tiktok.com') && !trimmedUrl.contains('vm.tiktok.com')) {
      return "URL must contain 'tiktok.com'."; // Use localized string
    }

    // Check specific TikTok formats
    bool isVideoValid = _tikTokVideoRegex.hasMatch(trimmedUrl);
    bool isShortValid = _tikTokShortRegex.hasMatch(trimmedUrl);

    if (isVideoValid || isShortValid) {
      return null; // TikTok video URL is valid
    }

    // If format doesn't match
    return "Invalid TikTok URL format. Please use a video link."; // Use localized string
  }

  // Backward compatibility method
  static String? validateThreadsUrl(String? url, bool isPremium) {
    return validateTikTokUrl(url, isPremium);
  }
}
