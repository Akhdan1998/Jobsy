part of '../../../../pages.dart';

class PengalamanKerjaController extends GetxController {
  final nama_perusahaan = TextEditingController();
  final nama_pekerjaan = TextEditingController();
  final keterampilan = TextEditingController();
  final desk_pekerjaan = TextEditingController();

  final selectedRange = Rxn<DateTimeRange>();
  final Set<String> selectedWorked = <String>{}.obs;

  Future<void> selectDateRange(BuildContext context) async {
    final picked = await pickDateRange(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      helpText: 'Pilih Periode Usia',
    );

    if (picked != null) {
      selectedRange.value = picked;
    }
  }

  @override
  void onClose() {
    nama_perusahaan.dispose();
    nama_pekerjaan.dispose();
    keterampilan.dispose();
    desk_pekerjaan.dispose();
    super.onClose();
  }
}