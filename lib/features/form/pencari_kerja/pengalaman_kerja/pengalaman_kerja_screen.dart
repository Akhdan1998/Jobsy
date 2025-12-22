part of '../../../../pages.dart';

class PengalamanKerja extends StatefulWidget {
  const PengalamanKerja({super.key});

  @override
  State<PengalamanKerja> createState() => _PengalamanKerjaState();
}

class _PengalamanKerjaState extends State<PengalamanKerja> {
  final controller = Get.put(PengalamanKerjaController());

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
              _textField(controller.nama_perusahaan, 'Nama Perusahaan'),
              const SizedBox(height: 20),
              _textField(controller.nama_pekerjaan, 'Nama Pekerjaan'),
              const SizedBox(height: 20),
              _textField(controller.keterampilan, 'Keterampilan'),
              const SizedBox(height: 20),
              _textField(controller.desk_pekerjaan, 'Deskripsi Pekerjaan'),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => controller.selectDateRange(context),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pariode',
                          style: Poppins(
                            color: neutralGrey,
                            fontSize: 15,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              controller.selectedRange.value == null
                                  ? 'Dari'
                                  : '${controller.selectedRange.value!.start.day}/${controller.selectedRange.value!.start.month}/${controller.selectedRange.value!.start.year}',
                              style: Poppins(color: neutralGrey, fontSize: 12),
                            ),
                            Text(' | ',
                                style: Poppins(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            Text(
                              controller.selectedRange.value == null
                                  ? 'Hingga'
                                  : '${controller.selectedRange.value!.end.day}/${controller.selectedRange.value!.end.month}/${controller.selectedRange.value!.end.year}',
                              style: Poppins(color: neutralGrey, fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Obx(() {
                return Wrap(
                  spacing: 12,
                  runSpacing: 8,
                  children: never_worked.map((e) {
                    final id = e['id']!;
                    final isSelected =
                    controller.selectedWorked.contains(id);

                    return GestureDetector(
                      onTap: () => isSelected
                          ? controller.selectedWorked.remove(id)
                          : controller.selectedWorked.add(id),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? skyBlue
                                  : whiteSkin,
                              border: Border.all(
                                width: 2,
                                color: isSelected
                                    ? skyBlue
                                    : neutralGrey,
                              ),
                              borderRadius:
                              BorderRadius.circular(5),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: whiteSkin,
                                ),
                                borderRadius:
                                BorderRadius.circular(4),
                              ),
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            e['never_worked']!.tr,
                            style: Poppins(fontSize: 14),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                );
              }),
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
