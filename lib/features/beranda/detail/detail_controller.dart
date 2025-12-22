part of '../../../pages.dart';

class DetailController extends GetxController {
  final userRole = ''.obs;

  @override
  void onInit() {
    super.onInit();
    _loadUserRole();
  }

  Future<void> _loadUserRole() async {
    final prefs = await SharedPreferences.getInstance();
    userRole.value = prefs.getString('selectedUserRole') ?? 'Pemberi Kerja';
  }
}