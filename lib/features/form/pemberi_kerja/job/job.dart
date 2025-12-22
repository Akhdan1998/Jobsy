part of '../../../../pages.dart';

class Job extends StatefulWidget {
  const Job({super.key});

  @override
  State<Job> createState() => _JobState();
}

class _JobState extends State<Job> {
  final JobController controller = Get.put(JobController());
  bool isKelaminTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50),
      height: MediaQuery.of(context).size.height - 235,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 5),
            _buildTextField(
                context, controller.namaPekerjaan, 'Nama Pekerjaan'),
            const SizedBox(height: 20),
            _buildTextField(
                context, controller.bidangPekerjaan, 'Bidang Pekerjaan'),
            const SizedBox(height: 20),
            _buildTextField(
                context, controller.lowonganTersedia, 'Lowongan Tersedia'),
            const SizedBox(height: 20),
            _buildTextField(
                context, controller.usia, 'Usia'),
            const SizedBox(height: 20),
            ReusableExpansionTile<Kelamin>(
              titleAlignment: Alignment.centerLeft,
              dividerColor: pureBlack,
              trailingColor: neutralGrey,
              title: 'Jenis Kelamin',
              items: kelaminList,
              itemBuilder: (item) => Text(
                item.kelaminUser,
                style: Poppins(color: pureBlack),
              ),
              onExpansionChanged: (isExpanded) {
                setState(() {
                  isKelaminTileExpanded = isExpanded;
                });
              },
              itemLabelBuilder: (item) => item.kelaminUser,
              onItemPressed: (item) async {
                debugPrint('Kelamin: ${item.kelaminUser} (${item.id})');
              },
              textColor: neutralGrey,
              borderColor: pureBlack,
              iconColor: neutralGrey,
            ),
            const SizedBox(height: 20),
            ReusableExpansionTile<Pendidikan>(
              titleAlignment: Alignment.centerLeft,
              dividerColor: pureBlack,
              trailingColor: neutralGrey,
              title: 'Pendidikan',
              items: pendidikanList,
              itemBuilder: (item) => Text(
                item.lulusan,
                style: Poppins(color: pureBlack),
              ),
              onExpansionChanged: (isExpanded) {
                setState(() {
                  isKelaminTileExpanded = isExpanded;
                });
              },
              itemLabelBuilder: (item) => item.lulusan,
              onItemPressed: (item) async {
                debugPrint('Kelamin: ${item.lulusan} (${item.id})');
              },
              textColor: neutralGrey,
              borderColor: pureBlack,
              iconColor: neutralGrey,
            ),
            const SizedBox(height: 20),
            ReusableExpansionTile<Kebijakan>(
              titleAlignment: Alignment.centerLeft,
              dividerColor: pureBlack,
              trailingColor: neutralGrey,
              title: 'Kebijakan Kerja',
              items: kebijakanList,
              itemBuilder: (item) => Text(
                item.rules,
                style: Poppins(color: pureBlack),
              ),
              onExpansionChanged: (isExpanded) {
                setState(() {
                  isKelaminTileExpanded = isExpanded;
                });
              },
              itemLabelBuilder: (item) => item.rules,
              onItemPressed: (item) async {
                debugPrint('Kelamin: ${item.rules} (${item.id})');
              },
              textColor: neutralGrey,
              borderColor: pureBlack,
              iconColor: neutralGrey,
            ),
            const SizedBox(height: 20),
            ReusableExpansionTile<JenisPekerjaan>(
              titleAlignment: Alignment.centerLeft,
              dividerColor: pureBlack,
              trailingColor: neutralGrey,
              title: 'Jenis Pekerjaan',
              items: jenisPekerjaanList,
              itemBuilder: (item) => Text(
                item.jenis_pekerjaan,
                style: Poppins(color: pureBlack),
              ),
              onExpansionChanged: (isExpanded) {
                setState(() {
                  isKelaminTileExpanded = isExpanded;
                });
              },
              itemLabelBuilder: (item) => item.jenis_pekerjaan,
              onItemPressed: (item) async {
                debugPrint('Kelamin: ${item.jenis_pekerjaan} (${item.id})');
              },
              textColor: neutralGrey,
              borderColor: pureBlack,
              iconColor: neutralGrey,
            ),
            const SizedBox(height: 20),
            ReusableExpansionTile<KategoriPerusahaan>(
              titleAlignment: Alignment.centerLeft,
              dividerColor: pureBlack,
              trailingColor: neutralGrey,
              title: 'Kategori Pekerjaan',
              items: kategoriPerusahaanList,
              itemBuilder: (item) => Text(
                item.kategori_perusahaan,
                style: Poppins(color: pureBlack),
              ),
              onExpansionChanged: (isExpanded) {
                setState(() {
                  isKelaminTileExpanded = isExpanded;
                });
              },
              itemLabelBuilder: (item) => item.kategori_perusahaan,
              onItemPressed: (item) async {
                debugPrint('Kelamin: ${item.kategori_perusahaan} (${item.id})');
              },
              textColor: neutralGrey,
              borderColor: pureBlack,
              iconColor: neutralGrey,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 80,
                  child: TextFieldCustom(
                    keyboardType: TextInputType.number,
                    onlyNumbers: true,
                    cursorColor: pureBlack,
                    hintColor: neutralGrey,
                    hintText: '',
                    lebel: 'Gaji',
                    cursorHeight: 20,
                    controller: controller.gaji,
                    borderSide: BorderSide(color: pureBlack, width: 1),
                    focusedBorderSide: BorderSide(color: pureBlack, width: 1),
                    enabledBorderSide: BorderSide(color: pureBlack, width: 1),
                    errorBorderSide: BorderSide(color: redBull, width: 2),
                  ),
                ),
                Text('/hari'),
              ],
            ),
            const SizedBox(height: 20),
            _buildTextField(
                context, controller.kualifikasi, 'Kualifikasi / Syarat'),
            const SizedBox(height: 20),
            _buildTextField(
                context, controller.deskripsi, 'Deskripsi Pekerjaan'),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                showSheet(
                  context: context,
                  child: Column(
                    children: [
                      Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        spacing: 20,
                        runSpacing: 20,
                        children: [
                          dayItem('Senin', controller.isSenin),
                          dayItem('Selasa', controller.isSelasa),
                          dayItem('Rabu', controller.isRabu),
                          dayItem('Kamis', controller.isKamis),
                          dayItem('Jum\'at', controller.isJumat),
                          dayItem('Sabtu', controller.isSabtu),
                          dayItem('Minggu', controller.isMinggu),
                        ],
                      ),
                      const SizedBox(height: 20),
                      ReusableButton(
                        buttonColor: skyBlue,
                        textColor: whiteSkin,
                        textSize: 15,
                        title: 'Lanjutkan',
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                );
              },
              child: Obx(
                    () {
                  final range = controller.selectedRangeDay;
                  return _buildCard(
                    context: context,
                    margin: const EdgeInsets.symmetric(horizontal: 1),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 48,
                    boxShadow: const [
                      BoxShadow(color: transparentColor, spreadRadius: 0, blurRadius: 0),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: pureBlack),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hari Kerja',
                          style: Poppins(color: neutralGrey, fontSize: 15),
                        ),
                        Row(
                          children: [
                            Text(range["from"]!,
                                style: Poppins(color: neutralGrey, fontSize: 12)),
                            Text(' | ',
                                style: Poppins(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            Text(range["to"]!,
                                style: Poppins(color: neutralGrey, fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
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
            GestureDetector(
              onTap: () => controller.selectTimeRange(context),
              child: Obx(() {
                final range = controller.selectedTimeRange.value;

                return _buildCard(
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
                        'Waktu Kerja',
                        style: Poppins(
                          color: neutralGrey,
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            range == null
                                ? 'Dari'
                                : range['start']!.format(context),
                            style: Poppins(color: neutralGrey, fontSize: 12),
                          ),
                          Text(' | ',
                              style: Poppins(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                          Text(
                            range == null
                                ? 'Hingga'
                                : range['end']!.format(context),
                            style: Poppins(color: neutralGrey, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget dayItem(String label, RxBool isChecked) {
    return GestureDetector(
      onTap: () => isChecked.value = !isChecked.value,
      child: Obx(() => IntrinsicWidth(
        child: Row(
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: isChecked.value ? skyBlue : whiteSkin,
                border: Border.all(
                  width: 2,
                  color: isChecked.value ? skyBlue : neutralGrey,
                ),
                shape: BoxShape.circle,
              ),
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: whiteSkin),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(label, style: Poppins(fontSize: 14)),
          ],
        ),
      )),
    );
  }

  Widget _buildTextField(
      BuildContext context, TextEditingController controller, String hint) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: TextFieldCustom(
        contentPadding: EdgeInsets.all(10),
        cursorColor: pureBlack,
        hintColor: neutralGrey,
        hintText: '',
        lebel: hint,
        cursorHeight: 20,
        controller: controller,
        borderSide: BorderSide(color: pureBlack, width: 1),
        focusedBorderSide: BorderSide(color: pureBlack, width: 1),
        enabledBorderSide: BorderSide(color: pureBlack, width: 1),
        errorBorderSide: BorderSide(color: redBull, width: 2),
      ),
    );
  }
}
