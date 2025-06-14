import 'package:intl/intl.dart';

String formatDate(DateTime? date) {
  return date != null ? DateFormat("dd MMMM yyyy").format(date) : "null";
}