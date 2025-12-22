part of '../../../../pages.dart';

class Rekruter extends StatelessWidget {
  const Rekruter({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RekruterController());

    return Scaffold(
      backgroundColor: whiteSkin,
      body: Container(
        padding: const EdgeInsets.only(top: 50),
        height: MediaQuery.of(context).size.height - 235,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 160,
                    child: Column(
                      children: [
                        _textField(controller.namaRekruter, 'Nama Rekruter'),
                        const SizedBox(height: 20),
                        _textField(
                            controller.posisiRekruter, 'Posisi Pekerjaan Rekruter'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Obx(() => SizedBox(
                        height: 100,
                        width: 100,
                        child: CusImagePicker(
                          imageFile: controller.selectedImage.value,
                          networkImage: "https://example.com/profile.jpg",
                          onTap: controller.pickImage,
                          size: 100,
                          iconBackground: skyBlue,
                          iconColor: whiteSkin,
                        ),
                      )),
                ],
              ),
              const SizedBox(height: 20),
              _textField(controller.namaPerusahaan, 'Nama Perusahaan'),
              const SizedBox(height: 20),
              _textField(controller.namaBisnis, 'Nama Bisnis'),
              const SizedBox(height: 20),
              _textField(controller.lokasiKantor, 'Lokasi Perusahaan'),
              const SizedBox(height: 20),
              _textField(controller.totalKaryawan, 'Total Karyawan'),
              const SizedBox(height: 20),
              _textField(controller.situsPerusahaan, 'Situs Perusahaan'),
              const SizedBox(height: 20),
              _textField(controller.tentangPerusahaan, 'Tentang Perusahaan'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textField(TextEditingController ctrl, String hint) {
    return SizedBox(
      width: MediaQuery.sizeOf(Get.context!).width,
      child: TextFieldCustom(
        cursorColor: pureBlack,
        hintColor: neutralGrey,
        hintText: hint,
        lebel: '',
        cursorHeight: 20,
        controller: ctrl,
        borderSide: BorderSide(color: pureBlack, width: 1),
        focusedBorderSide: BorderSide(color: pureBlack, width: 1),
        enabledBorderSide: BorderSide(color: pureBlack, width: 1),
        errorBorderSide: BorderSide(color: redBull, width: 2),
      ),
    );
  }
}
