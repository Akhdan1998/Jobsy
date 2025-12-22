part of '../../../../pages.dart';

class TentangSaya extends StatefulWidget {
  const TentangSaya({super.key});

  @override
  State<TentangSaya> createState() => _TentangSayaState();
}

class _TentangSayaState extends State<TentangSaya> {
  final controller = Get.put(TentangSayaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteSkin,
        body: Container(
          padding: const EdgeInsets.only(top: 40),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.sizeOf(Get.context!).width - 160,
                          child: _textField(
                              controller.nama_lengkap, 'Nama Lengkap'),
                        ),
                        const SizedBox(height: 20),
                        ReusableExpansionTile<Kelamin>(
                          width: MediaQuery.of(context).size.width - 160,
                          titleAlignment: Alignment.centerLeft,
                          title: 'Jenis Kelamin',
                          sizeTitle: 12,
                          items: kelaminList,
                          itemAlignment: Alignment.centerLeft,
                          itemBuilder: (item) => Text(
                            item.kelaminUser,
                            style: Poppins(color: pureBlack),
                          ),
                          onExpansionChanged: (isExpanded) {
                            setState(() {
                              controller.isKelaminTileExpanded = isExpanded;
                            });
                          },
                          itemLabelBuilder: (item) => item.kelaminUser,
                          onItemPressed: (item) async {
                            debugPrint(
                                'Jenis kelamin: ${item.kelaminUser} (${item.id})');
                          },
                          textColor: neutralGrey,
                          borderColor: pureBlack,
                          iconColor: pureBlack,
                          dividerColor: pureBlack,
                          trailingColor: pureBlack,
                          fillColor: whiteSkin,
                        ),
                      ],
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
                _textField(controller.alamat, 'Alamat'),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () => controller.pickDate(context),
                  child: Obx(
                    () => _buildCard(
                      context: context,
                      margin: const EdgeInsets.symmetric(horizontal: 1),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 48,
                      boxShadow: const [
                        BoxShadow(
                          color: transparentColor,
                          spreadRadius: 0,
                          blurRadius: 0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: pureBlack),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          controller.formattedDate,
                          style: Poppins(fontSize: 12, color: pureBlack),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                _textField(controller.nomor_telepon, 'Nomor Telepon'),
                const SizedBox(height: 20),
                _textField(controller.nama_sekolah, 'Nama Sekolah/Universitas'),
                const SizedBox(height: 20),
                _textField(controller.jurusan, 'Jurusan'),
                const SizedBox(height: 20),
                ReusableExpansionTile<Pendidikan>(
                  titleAlignment: Alignment.centerLeft,
                  title: 'Pendidikan Terakhir',
                  sizeTitle: 12,
                  items: pendidikanList,
                  itemAlignment: Alignment.centerLeft,
                  itemBuilder: (item) => Text(
                    item.lulusan,
                    style: Poppins(color: pureBlack),
                  ),
                  onExpansionChanged: (isExpanded) {
                    setState(() {
                      controller.isPendidikanTileExpanded = isExpanded;
                    });
                  },
                  itemLabelBuilder: (item) => item.lulusan,
                  onItemPressed: (item) async {
                    debugPrint(
                        'Pendidikan terakhir: ${item.lulusan} (${item.id})');
                  },
                  textColor: neutralGrey,
                  borderColor: pureBlack,
                  iconColor: pureBlack,
                  dividerColor: pureBlack,
                  trailingColor: pureBlack,
                  fillColor: whiteSkin,
                ),
                const SizedBox(height: 20),
                ReusableExpansionTile<Situasi>(
                  titleAlignment: Alignment.centerLeft,
                  title: 'Situasi saat ini',
                  sizeTitle: 12,
                  items: situasiList,
                  itemAlignment: Alignment.centerLeft,
                  itemBuilder: (item) => Text(
                    item.situasiUser,
                    style: Poppins(color: pureBlack),
                  ),
                  onExpansionChanged: (isExpanded) {
                    setState(() {
                      controller.isSituasiTileExpanded = isExpanded;
                    });
                  },
                  itemLabelBuilder: (item) => item.situasiUser,
                  onItemPressed: (item) async {
                    debugPrint(
                        'Situasi saat ini: ${item.situasiUser} (${item.id})');
                  },
                  textColor: neutralGrey,
                  borderColor: pureBlack,
                  iconColor: pureBlack,
                  dividerColor: pureBlack,
                  trailingColor: pureBlack,
                  fillColor: whiteSkin,
                ),
              ],
            ),
          ),
        ));
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
