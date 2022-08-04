import 'package:intl/intl.dart';

class Utils {
  static String twoDigitNumber(int i) => i.toString().padLeft(2, '0');

  static String numberCompact(int number) =>
      NumberFormat.compact().format(number);

  static String formatPrice(double price) => '\$${price.toStringAsFixed(1)}';
  static String formatDate(String? date) {
    try {
      if (date == null) return 'no date';
      final dateTime = DateTime.parse(date).toLocal();

      return DateFormat('E MMM, yy').format(dateTime);
    } catch (e) {
      return 'no date';
    }
  }
}
