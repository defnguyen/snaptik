import 'package:intl/intl.dart';

class DateFormatter {
  static String formatDateTime(DateTime dateTime,
      {String format = 'yyyy-MM-dd HH:mm'}) {
    try {
      return DateFormat(format).format(dateTime);
    } catch (e) {
      // Fallback or logging
      print("Error formatting date: $e");
      return dateTime.toIso8601String().substring(0, 16); // Basic fallback
    }
  }

  static String formatTimestamp(int timestampMillis,
      {String format = 'yyyy-MM-dd HH:mm'}) {
    try {
      final dateTime = DateTime.fromMillisecondsSinceEpoch(timestampMillis);
      return formatDateTime(dateTime, format: format);
    } catch (e) {
      print("Error formatting timestamp: $e");
      return 'Invalid Date';
    }
  }
}
