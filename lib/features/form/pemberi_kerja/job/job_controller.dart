part of '../../../../pages.dart';

class JobController extends GetxController {
  final namaPekerjaan = TextEditingController();
  final bidangPekerjaan = TextEditingController();
  final lowonganTersedia = TextEditingController();
  final usia = TextEditingController();
  final namaBisnis = TextEditingController();
  final lokasiKantor = TextEditingController();
  final gaji = TextEditingController();
  final kualifikasi = TextEditingController();
  final deskripsi = TextEditingController();
  var isSenin = false.obs;
  var isSelasa = false.obs;
  var isRabu = false.obs;
  var isKamis = false.obs;
  var isJumat = false.obs;
  var isSabtu = false.obs;
  var isMinggu = false.obs;
  final selectedRange = Rxn<DateTimeRange>();
  final selectedTimeRange = Rxn<Map<String, TimeOfDay>>();
  final RxList<String> selectedDay = <String>[].obs;

  List<String> daysOrder = [
    'Senin',
    'Selasa',
    'Rabu',
    'Kamis',
    'Jum\'at',
    'Sabtu',
    'Minggu'
  ];

  List<RxBool> daysCheck = [];

  @override
  void onInit() {
    daysCheck = [
      isSenin,
      isSelasa,
      isRabu,
      isKamis,
      isJumat,
      isSabtu,
      isMinggu,
    ];
    super.onInit();
  }

  Map<String, String> get selectedRangeDay {
    final selected = <String>[];
    for (var i = 0; i < daysOrder.length; i++) {
      if (daysCheck[i].value) selected.add(daysOrder[i]);
    }
    if (selected.isEmpty) return {"from": "Dari", "to": "Hingga"};
    return {
      "from": selected.first,
      "to": selected.last,
    };
  }

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

  Future<void> selectTimeRange(BuildContext context) async {
    final startTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      helpText: 'Pilih Jam Mulai',
      initialEntryMode: TimePickerEntryMode.inputOnly,
    );

    if (startTime == null) return;

    final endTime = await showTimePicker(
      context: context,
      initialTime: startTime,
      helpText: 'Pilih Jam Selesai',
      initialEntryMode: TimePickerEntryMode.inputOnly,
    );

    if (endTime == null) return;

    selectedTimeRange.value = {
      "start": startTime,
      "end": endTime,
    };
  }


  @override
  void onClose() {
    namaPekerjaan.dispose();
    bidangPekerjaan.dispose();
    lowonganTersedia.dispose();
    namaBisnis.dispose();
    lokasiKantor.dispose();
    super.onClose();
  }
}
