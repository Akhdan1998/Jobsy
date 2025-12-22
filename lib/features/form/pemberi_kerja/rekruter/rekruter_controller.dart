part of '../../../../pages.dart';

class RekruterController extends GetxController {
  final namaRekruter = TextEditingController();
  final posisiRekruter = TextEditingController();
  final namaPerusahaan = TextEditingController();
  final namaBisnis = TextEditingController();
  final lokasiKantor = TextEditingController();
  final totalKaryawan = TextEditingController();
  final situsPerusahaan = TextEditingController();
  final tentangPerusahaan = TextEditingController();

  var selectedImage = Rx<File?>(null);

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      selectedImage.value = File(pickedFile.path);
    }
  }

  @override
  void onClose() {
    namaRekruter.dispose();
    posisiRekruter.dispose();
    namaPerusahaan.dispose();
    namaBisnis.dispose();
    lokasiKantor.dispose();
    totalKaryawan.dispose();
    situsPerusahaan.dispose();
    tentangPerusahaan.dispose();
    super.onClose();
  }
}
