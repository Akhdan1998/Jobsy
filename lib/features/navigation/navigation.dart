part of '../../pages.dart';

class Navigation extends StatelessWidget {
  Navigation({super.key});

  final controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final userRole = controller.userRole.value;
      if (userRole == null) return const SizedBox.shrink();

      return Scaffold(
        backgroundColor: whiteSkin,
        body: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.zero,
                child: PageView(
                  controller: controller.pageCont,
                  physics: const NeverScrollableScrollPhysics(),
                  children: controller.pages,
                ),
              ),
            ),
            Container(
              color: whiteSkin,
              padding: EdgeInsets.only(bottom: Platform.isIOS ? 25: 15, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildNavButton(
                    controller: controller,
                    imageAsset: userRole == 'Pemberi Kerja'
                        ? 'assets/images/home.png'
                        : 'assets/images/low.png',
                    label: userRole == 'Pemberi Kerja' ? 'Beranda' : 'Lowongan',
                    index: 0,
                  ),
                  _buildNavButton(
                    controller: controller,
                    imageAsset: 'assets/images/obrolan.png',
                    label: 'Obrolan',
                    index: 1,
                  ),
                  _buildNavButton(
                    controller: controller,
                    imageAsset: 'assets/images/person.png',
                    label: 'Profil',
                    index: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget _buildNavButton({
    required NavigationController controller,
    required String label,
    required int index,
    required String imageAsset,
  }) {
    return Obx(() {
      final isActive = controller.selectedNav.value == index;
      return ReusableButton(
        padding: EdgeInsets.only(left: isActive ? 0 : 5),
        borderRadius: BorderRadius.circular(50),
        borderColor: isActive ? skyBlue : neutralGrey,
        buttonColor: isActive ? skyBlue : transparentColor,
        textColor: isActive ? whiteSkin : skyBlue,
        iconColor: isActive ? skyBlue : neutralGrey,
        textSize: 12,
        height: 50,
        width: isActive ? 120 : 65,
        iconPosition: IconPosition.left,
        imageAsset: imageAsset,
        imageColor: isActive ? whiteSkin : skyBlue,
        imageWidth: 25,
        imageHeight: 25,
        title: isActive ? label : '',
        onPressed: () => controller.onTabTapped(index),
      );
    });
  }
}
