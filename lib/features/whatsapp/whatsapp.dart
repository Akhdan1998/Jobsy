part of '../../pages.dart';

class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WhatsappController());

    return Scaffold(
      backgroundColor: whiteSkin,
      appBar: CusAppBar(
        title: 'Verifikasi Whatsapp',
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.headphones, color: whiteSkin),
          ),
        ],
      ),
      body: Obx(() => controller.otpVisible.value
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Saatnya verifikasi, masukkan OTP!', style: Poppins(),),
                  const SizedBox(height: 10),
                  Text(
                    'Kami telah mengirimkan kode 6 digit ke WhatsApp Anda: 08129076xxxx',
                    style: Poppins(),
                  ),
                  const SizedBox(height: 20),
                  Obx(() => OtpInputField(
                        length: 6,
                        hasError: controller.hasError.value,
                        onSubmit: controller.handleOtpSubmit,
                      )),
                  const SizedBox(height: 10),
                  Obx(
                    () => controller.remainingSeconds.value > 0
                        ? Text(
                            "Kirim ulang dalam ${controller.formatTime(controller.remainingSeconds.value)}",
                            style: Poppins(color: neutralGrey, fontSize: 11,),
                          )
                        : TextButton(
                            onPressed: controller.handleResendOtp,
                            child: Text(
                              "Kirim Ulang OTP",
                              style: Poppins(
                                  color: skyBlue, fontWeight: FontWeight.bold),
                            ),
                          ),
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Mari verifikasi WhatsApp Anda!', style: Poppins()),
                  const SizedBox(height: 10),
                  Text(
                    'Tinggalkan nomor WhatsApp-mu, dan kami akan mengirimkan OTP langsung kepadamu.',
                    style: Poppins(),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width - 108,
                        child: TextFieldCustom(
                          hintText: '',
                          lebel: 'Nomor Whatsapp',
                          cursorHeight: 20,
                          controller: controller.whatsapp,
                          borderSide: BorderSide(color: pureBlack, width: 1),
                          focusedBorderSide:
                              BorderSide(color: pureBlack, width: 1),
                          enabledBorderSide:
                              BorderSide(color: pureBlack, width: 1),
                          errorBorderSide: BorderSide(color: redBull, width: 2),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.toggleOtp();
                        },
                        child: _buildCard(
                          boxShadow: [
                            BoxShadow(
                              color: pureBlack,
                              spreadRadius: 1,
                              blurRadius: 0,
                            ),
                          ],
                          context: context,
                          margin: const EdgeInsets.only(left: 20),
                          padding: const EdgeInsets.all(10),
                          width: 48,
                          height: 48,
                          child: Icon(Icons.send, color: pureBlack),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Kode akan dikirim melalui WhatsApp dan berlaku 5 menit.',
                    style: Poppins(fontSize: 10, color: redBull),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
