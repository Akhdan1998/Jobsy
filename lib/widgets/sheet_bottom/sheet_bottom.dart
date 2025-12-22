part of '../../../pages.dart';

Future<void> showSheet({
  required BuildContext context,
  required Widget child,
  bool isScrollControlled = true,
  double? heightFraction,
  VoidCallback? onComplete,
}) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: isScrollControlled,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
    ),
    isDismissible: true,
    enableDrag: false,
    backgroundColor: whiteSkin,
    builder: (context) {
      return SingleChildScrollView(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 30, bottom: 30, left: 10, right: 10),
          child: child,
        ),
      );
    },
  ).whenComplete(() {
    if (onComplete != null) {
      onComplete();
    }
  });
}