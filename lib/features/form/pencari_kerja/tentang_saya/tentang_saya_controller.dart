part of '../../../../pages.dart';

class TentangSayaController extends GetxController {
  final nama_lengkap = TextEditingController();
  final alamat = TextEditingController();
  final nomor_telepon = TextEditingController();
  final nama_sekolah = TextEditingController();
  final jurusan = TextEditingController();

  var selectedDate = Rxn<DateTime>();
  var selectedImage = Rxn<File>();
  bool isKelaminTileExpanded = false;
  bool isPendidikanTileExpanded = false;
  bool isSituasiTileExpanded = false;

  @override
  void onClose() {
    nama_lengkap.dispose();
    alamat.dispose();
    nomor_telepon.dispose();
    nama_sekolah.dispose();
    jurusan.dispose();
    super.onClose();
  }

  Future<void> pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate.value ?? DateTime(2000, 1, 1),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      selectedDate.value = picked;
    }
  }

  String get formattedDate {
    if (selectedDate.value == null) return "Tanggal Lahir";
    return DateFormat('dd-MM-yyyy').format(selectedDate.value!);
  }

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      selectedImage.value = File(pickedFile.path);
    }
  }
}