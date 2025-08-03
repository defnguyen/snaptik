class ApiConfig {
  static const String baseUrl = "https://zm.kfuhyzd.space";

  static const String downloadEndpoint = "/a.php";
  static const String convertMp3Endpoint = "/api/v1/threads/convert-mp3"; // Keep for backward compatibility
  static const String contactEndpoint = "/api/v1/threads/contact"; // Keep for backward compatibility

  static const String apiKey = ""; // No API key needed for new endpoint
  static const Map<String, String> defaultHeaders = {
    'Content-Type': 'application/json',
  };
}