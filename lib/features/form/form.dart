part of '../../pages.dart';

class Form extends StatelessWidget {
  Form({super.key});

  final FormController controller = Get.put(FormController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              _buildCard(
                context: context,
                boxShadow: const [BoxShadow(color: transparentColor)],
                borderRadius: BorderRadius.circular(0),
                color: skyBlue,
                padding: const EdgeInsets.all(50),
                child: Container(),
              ),
              Expanded(
                child: Obx(() {
                  if (controller.userRole.value == null) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return _buildCard(
                    context: context,
                    boxShadow: const [BoxShadow(color: transparentColor)],
                    borderRadius: BorderRadius.circular(0),
                    child: PageView(
                      controller: controller.pageController,
                      onPageChanged: controller.onPageChanged,
                      physics: const NeverScrollableScrollPhysics(),
                      children: controller.userRole.value == 'Pemberi Kerja'
                          ? [
                              Rekruter(),
                              Job(),
                              DaftarReviewPemberiKerja(),
                            ]
                          : [
                              TentangSaya(),
                              PengalamanKerja(),
                              DreamJob(),
                              ReviewPencariKerja(),
                            ],
                    ),
                  );
                }),
              ),
            ],
          ),
          Positioned(
            top: 55,
            left: 20,
            right: 20,
            child: Obx(() {
              final role = controller.userRole.value;
              if (role == null) return const SizedBox.shrink();

              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: role == 'Pemberi Kerja'
                    ? [
                        _stepIndicator(context, 0, 'Rekruter',
                            controller.currentPage.value),
                        _stepIndicator(
                            context, 1, 'Job', controller.currentPage.value),
                        _stepIndicator(
                            context, 2, 'Review', controller.currentPage.value),
                      ]
                    : [
                        _stepIndicator(
                            context, 0, 'Bio', controller.currentPage.value),
                        _stepIndicator(
                            context, 1, 'Career', controller.currentPage.value),
                        _stepIndicator(context, 2, 'Ideal Job',
                            controller.currentPage.value),
                        _stepIndicator(
                            context, 3, 'Review', controller.currentPage.value),
                      ],
              );
            }),
          ),
        ],
      ),
      bottomNavigationBar: Obx(() {
        final role = controller.userRole.value;
        if (role == null) return const SizedBox.shrink();

        final totalSteps = controller.getTotalSteps();
        final isLastPage = controller.currentPage.value == totalSteps - 1;

        return Container(
          color: whiteSkin,
          padding:
              const EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 15),
          child: Row(
            children: [
              if (controller.currentPage.value > 0)
                Expanded(
                  child: ReusableButton(
                    height: 50,
                    textSize: 15,
                    fontWeight: FontWeight.w400,
                    title: 'Kembali',
                    onPressed: controller.previousPage,
                    buttonColor: whiteSkin,
                    borderColor: skyBlue,
                    textColor: skyBlue,
                  ),
                ),
              if (controller.currentPage.value > 0) const SizedBox(width: 10),
              Expanded(
                child: ReusableButton(
                  height: 50,
                  textSize: 15,
                  fontWeight: FontWeight.w400,
                  title: isLastPage ? 'Simpan' : 'Lanjut',
                  onPressed: () {
                    if (isLastPage) {
                      Get.offAll(() => Navigation());
                    } else {
                      controller.nextPage();
                    }
                  },
                  buttonColor: skyBlue,
                  borderColor: transparentColor,
                  textColor: whiteSkin,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget _stepIndicator(
      BuildContext context, int index, String title, int currentPage) {
    bool isActive = currentPage == index;
    return _buildCard(
      context: context,
      height: controller.userRole.value == 'Pemberi Kerja' ? 95 : 84,
      width: controller.userRole.value == 'Pemberi Kerja' ? 95 : 84,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isActive ? teelGreen : neutralGrey,
            ),
            child: Text(
              '${index + 1}',
              style: Poppins(color: whiteSkin, fontSize: 13),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: Poppins(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
