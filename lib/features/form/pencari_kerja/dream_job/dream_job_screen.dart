part of '../../../../pages.dart';

class DreamJob extends StatefulWidget {
  const DreamJob({super.key});

  @override
  State<DreamJob> createState() => _DreamJobState();
}

class _DreamJobState extends State<DreamJob> {
  final controller = Get.put(DreamJobController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteSkin,
      body: Container(
        padding: const EdgeInsets.only(top: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ReusableExpansionTile<Dream>(
                titleAlignment: Alignment.centerLeft,
                title: 'Lowongan yang diminati',
                sizeTitle: 12,
                items: dreamList,
                itemAlignment: Alignment.centerLeft,
                itemBuilder: (item) => Text(
                  item.dreamUser,
                  style: Poppins(color: pureBlack),
                ),
                onExpansionChanged: (isExpanded) {
                  setState(() {
                    controller.isDreamTileExpanded = isExpanded;
                  });
                },
                itemLabelBuilder: (item) => item.dreamUser,
                onItemPressed: (item) async {
                  debugPrint(
                      'Pendidikan terakhir: ${item.dreamUser} (${item.id})');
                },
                textColor: neutralGrey,
                borderColor: pureBlack,
                iconColor: pureBlack,
                dividerColor: pureBlack,
                trailingColor: pureBlack,
                fillColor: whiteSkin,
              ),
              const SizedBox(height: 20),
              ReusableExpansionTile<Lokasi>(
                titleAlignment: Alignment.centerLeft,
                title: 'Lokasi yang diinginkan',
                sizeTitle: 12,
                items: lokasiList,
                itemAlignment: Alignment.centerLeft,
                itemBuilder: (item) => Text(
                  item.lokasiUser,
                  style: Poppins(color: pureBlack),
                ),
                onExpansionChanged: (isExpanded) {
                  setState(() {
                    controller.isLokasiTileExpanded = isExpanded;
                  });
                },
                itemLabelBuilder: (item) => item.lokasiUser,
                onItemPressed: (item) async {
                  debugPrint(
                      'Pendidikan terakhir: ${item.lokasiUser} (${item.id})');
                },
                textColor: neutralGrey,
                borderColor: pureBlack,
                iconColor: pureBlack,
                dividerColor: pureBlack,
                trailingColor: pureBlack,
                fillColor: whiteSkin,
              ),
              const SizedBox(height: 20),
              _textField(controller.gaji, 'Gaji'),
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
