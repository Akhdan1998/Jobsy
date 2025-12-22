part of '../../pages.dart';

class NavigationController extends GetxController {
  final PageController pageCont = PageController();
  final selectedNav = 0.obs;
  final userRole = RxnString();

  final pages = [
    Beranda(),
    Obrolan(),
    Profil(),
  ];

  @override
  void onInit() {
    super.onInit();
    _loadUserRole();
  }

  void _loadUserRole() async {
    final prefs = await SharedPreferences.getInstance();
    userRole.value = prefs.getString('selectedUserRole');
  }

  void onTabTapped(int index) {
    selectedNav.value = index;
    pageCont.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOutExpo,
    );
  }

  @override
  void onClose() {
    pageCont.dispose();
    super.onClose();
  }
}