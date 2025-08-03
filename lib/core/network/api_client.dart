import 'package:dio/dio.dart';
import 'package:snaptik/config/api_config.dart';
import 'package:snaptik/core/services/local_storage_service.dart';
import 'package:snaptik/features/home/models/download_result.dart';

class Mp3ConversionResult {
  final bool success;
  final String? message;
  final String? mp3Url;

  Mp3ConversionResult({required this.success, this.message, this.mp3Url});

  factory Mp3ConversionResult.fromJson(Map<String, dynamic> json) {
    return Mp3ConversionResult(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
      mp3Url: json['data']?['url'] as String?,
    );
  }
}

class ApiClient {
  final Dio _dio;
  final LocalStorageService localStorageService;

  ApiClient({required this.localStorageService})
      : _dio = Dio(BaseOptions(
          baseUrl: ApiConfig.baseUrl,
          connectTimeout: const Duration(seconds: 15), // 15 seconds
          receiveTimeout: const Duration(seconds: 30), // 30 seconds
          headers: ApiConfig.defaultHeaders,
        )) {
    // Optional: Add interceptors for logging, error handling, auth tokens
    _dio.interceptors.add(LogInterceptor(
        requestBody: true, responseBody: true, requestHeader: true));

    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        final appUserID = localStorageService.loadAppUserID();
        if (appUserID != null && appUserID.isNotEmpty) {
          options.headers['x-user-id'] = appUserID;
          print("ApiClient: Added x-user-id header: $appUserID");
        }
        return handler.next(options);
      },
    ));
  }

  Future<DownloadResult> fetchMediaInfo(String url) async {
    try {
      print("Making API request to: ${ApiConfig.baseUrl}${ApiConfig.downloadEndpoint}");
      print("Request URL parameter: $url");

      final response = await _dio.get(
        ApiConfig.downloadEndpoint,
        queryParameters: {'url': url},
      );

      if (response.statusCode == 200 && response.data != null) {
        try {
          final result = DownloadResult.fromJson(response.data);
          if (result.success) {
            return result;
          } else {
            // Log the response for debugging when URLs are missing
            print("API returned success=false: ${result.message}");
            print("Response data: ${response.data}");
            throw Exception(result.message ?? 'No download URLs available. The video might be private or unavailable.');
          }
        } catch (e) {
          // If parsing fails, log the response data for debugging
          print("Failed to parse API response: $e");
          print("Response data: ${response.data}");
          throw Exception('Failed to parse server response. Please try again.');
        }
      } else {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
          type: DioExceptionType.badResponse,
          message: 'Failed to fetch data: ${response.statusCode}',
        );
      }
    } on DioException catch (e) {
      // Log the detailed Dio error
      print("API Error - fetchMediaInfo: ${e.message}");
      print("API Error Details: ${e.response?.data}");
      throw Exception(_handleError(e));
    } catch (e) {
      print("Unexpected API Error - fetchMediaInfo: $e");
      throw Exception(
          "An unexpected error occurred. Please try again."); // Localize
    }
  }

  Future<Mp3ConversionResult> convertVideoToMp3(String videoUrl) async {
    try {
      final response = await _dio.post(
        ApiConfig.convertMp3Endpoint,
        data: {'url': videoUrl},
      );

      if (response.statusCode == 200 && response.data != null) {
        final result = Mp3ConversionResult.fromJson(response.data);
        if (result.success && result.mp3Url != null) {
          return result;
        } else {
          throw DioException(
              requestOptions: response.requestOptions,
              response: response,
              type: DioExceptionType.badResponse,
              message: result.message ?? 'MP3 conversion API request failed');
        }
      } else {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
          type: DioExceptionType.badResponse,
          message: 'Failed to convert to MP3: ${response.statusCode}',
        );
      }
    } on DioException catch (e) {
      print("API Error - convertVideoToMp3: ${e.message}");
      print("API Error Details: ${e.response?.data}");
      throw Exception(_handleError(e));
    } catch (e) {
      print("Unexpected API Error - convertVideoToMp3: $e");
      throw Exception("An unexpected error occurred during MP3 conversion.");
    }
  }

  Future<bool> sendContactMessage({
    required String name,
    required String email,
    required String message,
  }) async {
    try {
      final response = await _dio.post(
        ApiConfig.contactEndpoint,
        data: {
          'name': name,
          'email': email,
          'message': message,
        },
      );

      // Assume 2xx status code means success for contact form
      return response.statusCode != null &&
          response.statusCode! >= 200 &&
          response.statusCode! < 300;
    } on DioException catch (e) {
      print("API Error - sendContactMessage: ${e.message}");
      throw Exception(_handleError(e));
    } catch (e) {
      print("Unexpected API Error - sendContactMessage: $e");
      throw Exception(
          "An unexpected error occurred. Please try again."); // Localize
    }
  }

  // --- Error Handling Helper ---
  String _handleError(DioException error) {
    String errorDescription = "An unknown error occurred."; // Localize Default
    switch (error.type) {
      case DioExceptionType.cancel:
        errorDescription = "Request cancelled."; // Localize
        break;
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        errorDescription =
            "Connection timeout. Please check your internet connection."; // Localize
        break;
      case DioExceptionType.badResponse:
        // Use backend message if available and meaningful
        final responseData = error.response?.data;
        final statusCode = error.response?.statusCode;

        if (responseData is Map && responseData.containsKey('message')) {
          errorDescription = responseData['message'];
        } else if (statusCode == 404) {
          errorDescription = "Resource not found or invalid URL."; // Localize
        } else if (statusCode == 500) {
          errorDescription = "Server error. Please try again later."; // Localize
        } else if (statusCode != null && statusCode >= 200 && statusCode < 300) {
          // Status code is actually successful, but response parsing failed
          errorDescription = "Failed to parse server response. Please try again."; // Localize
        } else {
          errorDescription = "Received invalid status code: $statusCode"; // Localize
        }
        break;
      case DioExceptionType.connectionError:
        errorDescription =
            "Connection error. Please check your internet connection."; // Localize
        break;
      case DioExceptionType.badCertificate:
        errorDescription =
            "Bad certificate error."; // Localize (rarely show to user)
        break;
      case DioExceptionType.unknown:
        if (error.message?.contains("SocketException") ?? false) {
          errorDescription =
              "Network error. Please check your internet connection."; // Localize
        } else {
          errorDescription = "An unexpected error occurred."; // Localize
        }
        break;
    }
    return errorDescription;
  }
}
