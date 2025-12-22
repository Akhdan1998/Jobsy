part of '../../../pages.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  final controller = Get.put(DetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteSkin,
      appBar: const CusAppBar(title: 'Detail Perkerjaan'),
      body: Obx(() {
        final role = controller.userRole.value;
        if (role.isEmpty) return const SizedBox.shrink();

        final isEmployer = role == 'Pemberi Kerja';
        return SingleChildScrollView(
          child: Column(
            children: [
              _buildCard(
                context: context,
                color: skyBlue,
                boxShadow: [
                  const BoxShadow(color: transparentColor),
                ],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
                padding: EdgeInsets.zero,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      child: Image.asset('assets/images/efek2.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, bottom: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Waiters',
                                style: Poppins(
                                  color: whiteSkin,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                              isEmployer
                                  ? _buildCard(
                                      context: context,
                                      boxShadow: [
                                        const BoxShadow(
                                          color: transparentColor,
                                          spreadRadius: 0,
                                          blurRadius: 0,
                                        ),
                                      ],
                                      gradient: LinearGradient(
                                        colors: [skyBlue, deepBlue],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                      color: deepBlue,
                                      padding: const EdgeInsets.only(
                                          left: 10,
                                          top: 5,
                                          right: 10,
                                          bottom: 5),
                                      child: Text(
                                        'Aktif (23 Pelamar)',
                                        style: Poppins(
                                          color: whiteSkin,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    )
                                  : SizedBox.shrink(),
                            ],
                          ),
                          isEmployer
                              ? BounceButton(
                                  onPressed: () {
                                    Get.to(DetailPerusahaan());
                                  },
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/company.png',
                                        scale: 4.5,
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Pendekar Gendut',
                                            style: Poppins(
                                              color: whiteSkin,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            'Rekruter • PT. Kolink Network Solutions',
                                            style: Poppins(
                                              color: whiteSkin,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              : SizedBox.shrink(),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Icon(
                                Icons.monetization_on_outlined,
                                color: whiteSkin,
                                size: 20,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Rp. 150-200 ribu /hari',
                                style: Poppins(
                                  color: whiteSkin,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(
                                Icons.work_outline,
                                color: whiteSkin,
                                size: 20,
                              ),
                              SizedBox(width: 10),
                              Text(
                                '3-5 bulan • Paruh Waktu • 2 lowongan',
                                style: Poppins(
                                  color: whiteSkin,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: whiteSkin,
                                size: 20,
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: MediaQuery.of(context).size.width - 70,
                                child: Text(
                                  'Jl. Trembesi Blok D, Pademangan Tim., Kec. Pademangan, Jkt Utara, Daerah Khusus Ibukota Jakarta 14410',
                                  style: Poppins(
                                    color: whiteSkin,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Container(
                            padding: EdgeInsets.only(left: 32),
                            child: Text(
                              'Ditayangkan pada 18/07/2025, oleh Pendekar Gendut',
                              style: Poppins(
                                color: whiteSkin,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              _buildCard(
                context: context,
                color: skyBlue,
                boxShadow: [
                  const BoxShadow(color: transparentColor),
                ],
                padding: EdgeInsets.zero,
                borderRadius: BorderRadius.zero,
                child: Container(
                  height: MediaQuery.of(context).size.height - 363,
                  padding: isEmployer
                      ? const EdgeInsets.only(left: 20, top: 20)
                      : EdgeInsets.zero,
                  decoration: BoxDecoration(
                    color: whiteSkin,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(80),
                    ),
                  ),
                  child: Column(
                    children: [
                      isEmployer
                          ? SizedBox.shrink()
                          : BounceButton(
                              onPressed: () {
                                Get.to(DetailPerusahaan());
                              },
                              child: Container(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 15, bottom: 15),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/company.png',
                                      scale: 4.5,
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Pendekar Gendut',
                                          style: Poppins(
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          'Rekruter • PT. Kolink Network Solutions',
                                          style: Poppins(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                      Stack(
                        children: [
                          _buildCard(
                            context: context,
                            color: skyBlue,
                            margin: const EdgeInsets.only(right: 20),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(70),
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(40),
                            ),
                            boxShadow: [
                              const BoxShadow(color: transparentColor),
                            ],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Deskripsi Perkerjaan',
                                  style: Poppins(
                                    color: whiteSkin,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  ' • Mengilustrasikan ide melalui storyboard, alur proses, perjalanan pengguna, dan peta situs',
                                  style: Poppins(color: whiteSkin),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  ' • Menyampaikan solusi berbasis pengguna dengan mempertimbangkan penelitian dan pemahaman kebutuhan bisnis',
                                  style: Poppins(color: whiteSkin),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  ' • Mengembangkan rancangan (UI) dan prototipe',
                                  style: Poppins(color: whiteSkin),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.work_outline,
                                              color: whiteSkin,
                                              size: 15,
                                            ),
                                            const SizedBox(width: 10),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Pengalaman Kerja',
                                                  style: Poppins(
                                                    color: whiteSkin,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                                Text(
                                                  '1 tahun',
                                                  style: Poppins(
                                                    color: whiteSkin,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.business_center_outlined,
                                              color: whiteSkin,
                                              size: 15,
                                            ),
                                            const SizedBox(width: 10),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Aset',
                                                  style: Poppins(
                                                    color: whiteSkin,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                                Text(
                                                  'Motor & Smartphone',
                                                  style: Poppins(
                                                    color: whiteSkin,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.school_outlined,
                                              color: whiteSkin,
                                              size: 15,
                                            ),
                                            const SizedBox(width: 10),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Pendidikan',
                                                  style: Poppins(
                                                    color: whiteSkin,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                                Text(
                                                  'SMK',
                                                  style: Poppins(
                                                    color: whiteSkin,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.psychology_outlined,
                                              color: whiteSkin,
                                              size: 15,
                                            ),
                                            const SizedBox(width: 10),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Keahlian',
                                                  style: Poppins(
                                                    color: whiteSkin,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                                Text(
                                                  'Leader\nKerja sama tim',
                                                  style: Poppins(
                                                    color: whiteSkin,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 50,
                            left: 0,
                            child: Image.asset('assets/images/efek2.png'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
      bottomNavigationBar: Obx(() {
        final role = controller.userRole.value;
        if (role.isEmpty) return const SizedBox.shrink();

        final isEmployer = role == 'Pemberi Kerja';
        return isEmployer
            ? SizedBox.shrink()
            : Container(
                color: transparentColor,
                height: 137,
                padding: const EdgeInsets.only(
                    left: 15, top: 15, right: 15, bottom: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableButton(
                      padding: EdgeInsets.only(left: 0, bottom: 10),
                      rowAlignment: MainAxisAlignment.start,
                      textSize: 10,
                      fontWeight: FontWeight.w500,
                      icon: Icons.mark_chat_read_outlined,
                      iconColor: skyBlue,
                      iconPosition: IconPosition.left,
                      title:
                          'HRD dilarang memungut biaya, laporkan jika terjadi',
                      onPressed: () {},
                      buttonColor: transparentColor,
                      borderColor: transparentColor,
                      textColor: skyBlue,
                    ),
                    ReusableButton(
                      height: 50,
                      textSize: 15,
                      fontWeight: FontWeight.w400,
                      title: 'Lamar',
                      onPressed: () {},
                      buttonColor: skyBlue,
                      borderColor: transparentColor,
                      textColor: whiteSkin,
                    ),
                  ],
                ),
              );
      }),
    );
  }
}
