part of '../../../pages.dart';

Future<DateTimeRange?> pickDateRange({
  required BuildContext context,
  DateTime? firstDate,
  DateTime? lastDate,
  DateTimeRange? initialDateRange,
  String helpText = 'Pilih Tanggal',
  String cancelText = 'Batal',
  String confirmText = 'Pilih',
}) {
  return showDateRangePicker(
    context: context,
    firstDate: firstDate ?? DateTime(2000),
    lastDate: lastDate ?? DateTime(2100),
    initialDateRange: initialDateRange,
    helpText: helpText,
    cancelText: cancelText,
    confirmText: confirmText,
  );
}