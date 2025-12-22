part of '../../pages.dart';

class BerandaController extends GetxController {
  final selectedIndex = 0.obs;
  final selectedStatus = 0.obs;
  final selectedFilter = 0.obs;
  final userRole = ''.obs;
  final pageController = PageController();

  final statuses = [
    'Dalam Review',
    'Aktif',
    'Nonaktif',
    'Draf',
  ];
  final filters = [
    'Rekomendasi',
    'Baru',
    'Lulusan Baru',
    'Remote',
  ];

  void setStatus(int index) {
    if (index != selectedStatus.value) {
      selectedStatus.value = index;
      pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOutExpo,
      );
    }
  }

  void setFilter(int index) {
    if (index != selectedFilter.value) {
      selectedFilter.value = index;
      pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOutExpo,
      );
    }
  }

  @override
  void onInit() {
    super.onInit();
    _loadUserRole();
  }

  Future<void> _loadUserRole() async {
    final prefs = await SharedPreferences.getInstance();
    userRole.value = prefs.getString('selectedUserRole') ?? 'Pemberi Kerja';
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
