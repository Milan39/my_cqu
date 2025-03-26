import 'package:intl/intl.dart';

DateTime parseDateTime(String dateTimeString, String format) {
  final DateFormat formatter = DateFormat(format);
  return formatter.parse(dateTimeString);
}

String formatDateTime(DateTime dateTime, String format) {
  final DateFormat formatter = DateFormat(format);
  return formatter.format(dateTime);
}

DateTime dateTimeFromJson(String date) => parseDateTime(
      date,
      'EEE, dd MMM yyyy - h:mm a',
    );

String? dateTimeToJson(DateTime? date) => date != null
    ? formatDateTime(
        date,
        'yyyy-MM-dd',
      )
    : null;

String currencyFormatter({required double amount}){
  String formattedAmount = NumberFormat.currency(
    locale: 'en_IN',
    symbol: 'Rs. ', // Nepali Rupee symbol
    decimalDigits: 0, // No decimal places
  ).format(amount);
  return formattedAmount;
}
