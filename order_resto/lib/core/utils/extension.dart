import 'package:intl/intl.dart';

extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }
}

extension Currency on int {
  String currency() {
    var formatter = NumberFormat('#,##0', 'en_US');
    return formatter.format(this);
  }
}
