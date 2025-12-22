part of '../../../pages.dart';

class UbahProfileController extends GetxController {
  final selectedImage = Rx<File?>(null);
  final userRole = RxnString();

  final namaBisnis = TextEditingController();
  final namaRekruter = TextEditingController();
  final nomorWhatsapp = TextEditingController();
  final email = TextEditingController();
  final lokasi = TextEditingController();
  final posisi = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    _loadUserRole();
  }

  Future<void> _loadUserRole() async {
    final prefs = await SharedPreferences.getInstance();
    userRole.value = prefs.getString('selectedUserRole');
  }

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      selectedImage.value = File(pickedFile.path);
    }
  }
}
