part of '../../pages.dart';

class FormController extends GetxController {
  final pageController = PageController();
  var currentPage = 0.obs;
  final userRole = RxnString();

  @override
  void onInit() {
    super.onInit();
    _loadUserRole();
  }

  Future<void> _loadUserRole() async {
    final prefs = await SharedPreferences.getInstance();
    userRole.value = prefs.getString('selectedUserRole');
  }

  int getTotalSteps() {
    return userRole.value == 'Pemberi Kerja' ? 3 : 4;
  }

  void nextPage() {
    final totalSteps = getTotalSteps();
    if (currentPage.value < totalSteps - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void previousPage() {
    if (currentPage.value > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}