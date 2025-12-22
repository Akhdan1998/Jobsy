part of '../../../pages.dart';

class CusAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final VoidCallback? onBack;
  final List<Widget>? actions;
  final double height;

  const CusAppBar({
    super.key,
    required this.title,
    this.showBackButton = true,
    this.onBack,
    this.actions,
    this.height = kToolbarHeight,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: skyBlue,
      leading: showBackButton
          ? IconButton(
              icon: Icon(Icons.arrow_back, color: whiteSkin),
              onPressed: onBack ?? () => Get.back(),
            )
          : null,
      title: Text(
        title,
        style: Poppins(
          color: whiteSkin,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: actions,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
