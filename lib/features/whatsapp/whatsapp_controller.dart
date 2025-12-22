part of '../../pages.dart';

class WhatsappController extends GetxController {
  final whatsapp = TextEditingController();

  final otpVisible = false.obs;
  final hasError = false.obs;
  bool _navigated = false;
  final remainingSeconds = 300.obs;
  Timer? _timer;

  void toggleOtp() {
    otpVisible.value = true;
    startTimer();
  }

  void startTimer() {
    _timer?.cancel();
    remainingSeconds.value = 300;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainingSeconds.value > 0) {
        remainingSeconds.value--;
      } else {
        timer.cancel();
      }
    });
  }

  void handleResendOtp() {
    debugPrint("🔄 OTP dikirim ulang!");
    startTimer();
  }

  void handleOtpSubmit(String otp) {
    if (_navigated) return;

    if (otp != "123456") {
      hasError.value = true;
    } else {
      hasError.value = false;
      _navigated = true;
      Get.offAll(Form());
    }
  }

  String formatTime(int seconds) {
    final minutes = (seconds ~/ 60).toString().padLeft(2, '0');
    final secs = (seconds % 60).toString().padLeft(2, '0');
    return "$minutes:$secs";
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}