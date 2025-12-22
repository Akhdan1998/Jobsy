part of '../../../pages.dart';

void showCusDialog({
  required String title,
  required String content,
  required String confirmText,
  required String cancelText,
  required VoidCallback onConfirm,
}) {
  Get.dialog(
    barrierDismissible: true,
    Center(
      child: AlertDialog(
        contentPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: Get.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
                color: skyBlue,
              ),
              padding: const EdgeInsets.only(
                  left: 20, top: 10, bottom: 10, right: 20),
              child: Text(
                title,
                style: Poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: whiteSkin,
                ),
              ),
            ),
            Container(
              width: Get.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                color: whiteSkin,
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(
                        left: 20, top: 10, right: 20, bottom: 0),
                    child: Text(
                      content,
                      style: Poppins(
                        fontSize: 14,
                        color: pureBlack,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 10, right: 10, bottom: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text(
                            cancelText,
                            style: Poppins(
                              color: redBull,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            onConfirm();
                            Get.back();
                          },
                          child: Text(
                            confirmText,
                            style: Poppins(
                              color: skyBlue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
