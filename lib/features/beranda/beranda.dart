part of '../../pages.dart';

class Beranda extends StatelessWidget {
  Beranda({super.key});

  final controller = Get.put(BerandaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteSkin,
      body: Obx(() {
        final role = controller.userRole.value;
        if (role.isEmpty) return const SizedBox.shrink();

        final isEmployer = role == 'Pemberi Kerja';
        final isSelectedIndexZero = controller.selectedIndex.value == 0;

        return Column(
          children: [
            if (isSelectedIndexZero)
              HeaderSection(
                isEmployer: isEmployer,
                controller: controller,
              ),
            // const SizedBox(height: 15),
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: controller.pageController,
                onPageChanged: (index) {
                  if (isEmployer) {
                    controller.selectedStatus.value = index;
                  } else {
                    controller.selectedFilter.value = index;
                  }
                },
                children: isEmployer
                    ? const [
                        Review(),
                        Aktif(),
                        Nonaktif(),
                        Draf(),
                      ]
                    : const [
                        UntukKamu(),
                        Baru(),
                        LulusanBaru(),
                        DariRumah(),
                      ],
              ),
            ),
          ],
        );
      }),
    );
  }
}

class HeaderSection extends StatelessWidget {
  final bool isEmployer;
  final BerandaController controller;

  const HeaderSection({
    super.key,
    required this.isEmployer,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: skyBlue,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 60,
            left: 0,
            child: Image.asset('assets/images/efek1.png'),
          ),
          Positioned(
            top: -100,
            child: Image.asset('assets/images/efek2.png'),
          ),
          Container(
            padding: EdgeInsets.only(top: Platform.isIOS ? 60 : 50, bottom: Platform.isIOS ? 5 : 0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: isEmployer
                      ? _buildEmployerTopRow(context)
                      : _buildSeekerSearchBar(context),
                ),
                Obx(() => SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          isEmployer
                              ? controller.statuses.length
                              : controller.filters.length,
                          (index) {
                            final isActive = isEmployer
                                ? controller.selectedStatus.value == index
                                : controller.selectedFilter.value == index;
                            final title = isEmployer
                                ? controller.statuses[index]
                                : controller.filters[index];
                            return TextButton(
                              onPressed: () => isEmployer
                                  ? controller.setStatus(index)
                                  : controller.setFilter(index),
                              child: Text(
                                title,
                                style: Poppins(
                                  fontSize: 13,
                                  color: whiteSkin,
                                  fontWeight: isActive
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmployerTopRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ReusableButton(
          buttonColor: transparentColor,
          borderColor: whiteSkin,
          textColor: whiteSkin,
          textSize: 12,
          height: 50,
          width: Platform.isIOS ? MediaQuery.of(context).size.width - 93 : MediaQuery.of(context).size.width - 73,
          margin: EdgeInsets.zero,
          iconPosition: IconPosition.left,
          icon: Icons.add_circle_outline,
          borderRadius: BorderRadius.circular(50),
          title: 'Pasang Lowongan',
          onPressed: () => debugPrint(controller.userRole.value),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_none, color: whiteSkin),
        ),
      ],
    );
  }

  Widget _buildSeekerSearchBar(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFieldCustom(
            fillColor: transparentColor,
            filled: true,
            hintColor: whiteSkin,
            borderSide: BorderSide(color: whiteSkin),
            focusedBorderSide: BorderSide(color: whiteSkin),
            enabledBorderSide: BorderSide(color: whiteSkin),
            errorBorderSide: BorderSide(color: redBull, width: 2),
            borderRadius: 50,
            obscureText: false,
            hintText: 'Cari pekerjaan apa?',
            lebel: '',
            cursorHeight: 20,
            suffixIcon: Icon(Icons.search, color: whiteSkin),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.filter_alt, color: whiteSkin),
        ),
      ],
    );
  }
}
