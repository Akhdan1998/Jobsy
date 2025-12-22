part of '../../../pages.dart';

bool _isToastActive = false;

void showToast(String message, IconData icon, Color iconColor) {
  if (_isToastActive) return;
  _isToastActive = true;

  final context = Get.context!;

  const animationDur = Duration(seconds: 2);
  const toastDur = Duration(seconds: 5);

  DelightToastBar(
    animationDuration: const Duration(seconds: 2),
    snackbarDuration: const Duration(seconds: 5),
    autoDismiss: true,
    position: DelightSnackbarPosition.top,
    builder: (context) {
      return ToastCard(
        color: whiteSkin,
        leading: Icon(
          icon,
          size: 28,
          color: iconColor,
        ),
        title: Text(
          message,
          style: Poppins(
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      );
    },
  ).show(context);

  Future.delayed(animationDur + toastDur, () {
    _isToastActive = false;
  });
}
