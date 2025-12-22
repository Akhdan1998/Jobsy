part of '../../../pages.dart';

class UbahProfil extends StatefulWidget {
  const UbahProfil({super.key});

  @override
  State<UbahProfil> createState() => _UbahProfilState();
}

class _UbahProfilState extends State<UbahProfil> {
  final controller = Get.put(UbahProfileController());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          CusAppBar(
              title: controller.userRole == 'Pemberi Kerja'
                  ? 'Ubah Profil'
                  : 'Profil Karier',
          ),
          Positioned(
            top: -100,
            child: IgnorePointer(
              child: Image.asset('assets/images/efek2.png'),
            ),
          ),
          Positioned(
            top: Platform.isIOS ? 125 : 100,
            child: _buildCard(
              context: context,
              height: size.height,
              width: size.width,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
                bottomLeft: Radius.zero,
                bottomRight: Radius.zero,
              ),
              padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
              child: controller.userRole == 'Pemberi Kerja'
                  ? ListView(
                      children: [
                        CusImagePicker(
                          imageFile: controller.selectedImage.value,
                          networkImage: "https://example.com/profile.jpg",
                          onTap: controller.pickImage,
                          size: 110,
                          iconBackground: skyBlue,
                          iconColor: whiteSkin,
                        ),
                        const SizedBox(height: 20),
                        _buildTextField("Nama Bisnis", controller.namaBisnis),
                        const SizedBox(height: 20),
                        _buildTextField("Nama Rekruter", controller.namaRekruter),
                        const SizedBox(height: 20),
                        _buildTextField("Nomor Whatsapp", controller.nomorWhatsapp),
                        const SizedBox(height: 20),
                        _buildTextField("Email", controller.email),
                        const SizedBox(height: 20),
                        _buildTextField("Lokasi", controller.lokasi),
                        const SizedBox(height: 20),
                        _buildTextField("Posisi di Perusahaan", controller.posisi),
                        const SizedBox(height: 190),
                      ],
                    )
                  : SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          _buildCard(
                            context: context,
                            color: Colors.grey.shade300,
                            boxShadow: [
                              BoxShadow(color: Colors.grey.shade300),
                            ],
                            padding: EdgeInsets.zero,
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CusBadge(
                                      child: Text(
                                        'Open to work',
                                        style: Poppins(
                                            color: whiteSkin, fontSize: 12),
                                      ),
                                    ),
                                    BounceButton(
                                      onPressed: () {
                                        debugPrint('Rubah Profil');
                                      },
                                      child: CusBadge(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.zero,
                                        ),
                                        padding: const EdgeInsets.only(
                                          left: 30,
                                          right: 30,
                                          top: 10,
                                          bottom: 10,
                                        ),
                                        child: Icon(
                                          Icons.edit_note,
                                          color: whiteSkin,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Pendekar Gendut',
                                            style: Poppins(),
                                          ),
                                          Text(
                                            'Pria • 27 tahun',
                                            style: Poppins(fontSize: 13),
                                          ),
                                        ],
                                      ),
                                      Image.asset(
                                        'assets/images/profil.png',
                                        scale: 2,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _buildDivider(context, color: whiteSkin),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 10),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.work_outline,
                                        size: 20,
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        '3 tahun pengalaman kerja',
                                        style: Poppins(fontSize: 13),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, bottom: 15),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.school_outlined,
                                        size: 20,
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        'Strata 1',
                                        style: Poppins(fontSize: 13),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          _buildCard(
                            context: context,
                            color: Colors.grey.shade300,
                            boxShadow: [
                              BoxShadow(color: Colors.grey.shade300),
                            ],
                            padding: EdgeInsets.zero,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 15, bottom: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Tentang Saya',
                                        style: Poppins(fontSize: 13),
                                      ),
                                      BounceButton(
                                        onPressed: () {
                                          debugPrint('Tentang Saya');
                                        },
                                        child: CusBadge(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.zero,
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.zero,
                                          ),
                                          padding: const EdgeInsets.only(
                                            left: 25,
                                            right: 25,
                                            top: 5,
                                            bottom: 5,
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: whiteSkin,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                _buildDivider(context, color: whiteSkin),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Text(
                                    'Ceritakan tentang Anda',
                                    style: Poppins(
                                      color: neutralGrey,
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                const SizedBox(height: 15),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          _buildCard(
                            context: context,
                            color: Colors.grey.shade300,
                            boxShadow: [
                              BoxShadow(color: Colors.grey.shade300),
                            ],
                            padding: EdgeInsets.zero,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 15, bottom: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Pengalaman Kerja',
                                        style: Poppins(fontSize: 13),
                                      ),
                                      BounceButton(
                                        onPressed: () {
                                          debugPrint('Pengalaman Kerja');
                                        },
                                        child: CusBadge(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.zero,
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.zero,
                                          ),
                                          padding: const EdgeInsets.only(
                                            left: 25,
                                            right: 25,
                                            top: 5,
                                            bottom: 5,
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: whiteSkin,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                _buildDivider(context, color: whiteSkin),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Text(
                                    'Posisi, Nama Bisnis, Spesialisasi',
                                    style: Poppins(
                                      color: neutralGrey,
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                const SizedBox(height: 15),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          _buildCard(
                            context: context,
                            color: Colors.grey.shade300,
                            boxShadow: [
                              BoxShadow(color: Colors.grey.shade300),
                            ],
                            padding: EdgeInsets.zero,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 15, bottom: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Keterampilan',
                                        style: Poppins(fontSize: 13),
                                      ),
                                      BounceButton(
                                        onPressed: () {
                                          debugPrint('Keterampilan');
                                        },
                                        child: CusBadge(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.zero,
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.zero,
                                          ),
                                          padding: const EdgeInsets.only(
                                            left: 25,
                                            right: 25,
                                            top: 5,
                                            bottom: 5,
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: whiteSkin,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                _buildDivider(context, color: whiteSkin),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Text(
                                    'contoh: VS Code, Android Studio, Firebase',
                                    style: Poppins(
                                      color: neutralGrey,
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                const SizedBox(height: 15),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          _buildCard(
                            context: context,
                            color: Colors.grey.shade300,
                            boxShadow: [
                              BoxShadow(color: Colors.grey.shade300),
                            ],
                            padding: EdgeInsets.zero,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 15, bottom: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Aset',
                                        style: Poppins(fontSize: 13),
                                      ),
                                      BounceButton(
                                        onPressed: () {
                                          debugPrint('Aset');
                                        },
                                        child: CusBadge(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.zero,
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.zero,
                                          ),
                                          padding: const EdgeInsets.only(
                                            left: 25,
                                            right: 25,
                                            top: 5,
                                            bottom: 5,
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: whiteSkin,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                _buildDivider(context, color: whiteSkin),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Text(
                                    'Aset atau dokumen untuk memfasilitasi perkerjaan',
                                    style: Poppins(
                                      color: neutralGrey,
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                const SizedBox(height: 15),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          _buildCard(
                            context: context,
                            color: Colors.grey.shade300,
                            boxShadow: [
                              BoxShadow(color: Colors.grey.shade300),
                            ],
                            padding: EdgeInsets.zero,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 15, bottom: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Sertifikat',
                                        style: Poppins(fontSize: 13),
                                      ),
                                      BounceButton(
                                        onPressed: () {
                                          debugPrint('Sertifikat');
                                        },
                                        child: CusBadge(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.zero,
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.zero,
                                          ),
                                          padding: const EdgeInsets.only(
                                            left: 25,
                                            right: 25,
                                            top: 5,
                                            bottom: 5,
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: whiteSkin,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                _buildDivider(context, color: whiteSkin),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Text(
                                    'Masukan sertifikat yang anda miliki',
                                    style: Poppins(
                                      color: neutralGrey,
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                const SizedBox(height: 15),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          _buildCard(
                            context: context,
                            color: Colors.grey.shade300,
                            boxShadow: [
                              BoxShadow(color: Colors.grey.shade300),
                            ],
                            padding: EdgeInsets.zero,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 15, bottom: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Link Portofolio',
                                        style: Poppins(fontSize: 13),
                                      ),
                                      BounceButton(
                                        onPressed: () {
                                          debugPrint('Link Portofolio');
                                        },
                                        child: CusBadge(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.zero,
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.zero,
                                          ),
                                          padding: const EdgeInsets.only(
                                            left: 25,
                                            right: 25,
                                            top: 5,
                                            bottom: 5,
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: whiteSkin,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                _buildDivider(context, color: whiteSkin),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Text(
                                    'Tambahkan link portofolio untuk menunjukan kredibilitas kamu ke calon HRD',
                                    style: Poppins(
                                      color: neutralGrey,
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                const SizedBox(height: 15),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          _buildCard(
                            context: context,
                            color: Colors.grey.shade300,
                            boxShadow: [
                              BoxShadow(color: Colors.grey.shade300),
                            ],
                            padding: EdgeInsets.zero,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 15, bottom: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Pengalaman Organisasi & Relawan',
                                        style: Poppins(fontSize: 13),
                                      ),
                                      BounceButton(
                                        onPressed: () {
                                          debugPrint('Pengalaman Organisasi & Relawan');
                                        },
                                        child: CusBadge(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.zero,
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.zero,
                                          ),
                                          padding: const EdgeInsets.only(
                                            left: 25,
                                            right: 25,
                                            top: 5,
                                            bottom: 5,
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: whiteSkin,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                _buildDivider(context, color: whiteSkin),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Text(
                                    'Tambahkan pengalaman organisasi atau relawab menunjukan dedikasi kamu',
                                    style: Poppins(
                                      color: neutralGrey,
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                const SizedBox(height: 15),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          _buildCard(
                            context: context,
                            color: Colors.grey.shade300,
                            boxShadow: [
                              BoxShadow(color: Colors.grey.shade300),
                            ],
                            padding: EdgeInsets.zero,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 15, bottom: 15),
                                  child: Text(
                                    'Preferensi Kerja',
                                    style: Poppins(fontSize: 13),
                                  ),
                                ),
                                _buildDivider(context, color: whiteSkin),
                                const SizedBox(height: 10),
                                BounceButton(
                                  onPressed: () {
                                    debugPrint('Lowongan');
                                  },
                                  child: Container(
                                    color: transparentColor,
                                    padding: const EdgeInsets.only(
                                      left: 20,
                                      right: 20,
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Lowongan diinginkan',
                                              style: Poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300,
                                                color: coolGrey
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              'Admin Seles',
                                              style: Poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Icon(Icons.arrow_forward_ios, size: 20,),
                                      ],
                                    ),
                                  ),
                                ),
                                BounceButton(
                                  onPressed: () {
                                    debugPrint('Lokasi');
                                  },
                                  child: Container(
                                    color: transparentColor,
                                    padding: const EdgeInsets.only(
                                      left: 20,
                                      right: 20,
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Lokasi yang diinginkan',
                                              style: Poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w300,
                                                  color: coolGrey
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width - 115,
                                              child: Text(
                                                'DKI Jakarta, Bogor, Bandung, Semarang, Surabaya',
                                                style: Poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Icon(Icons.arrow_forward_ios, size: 20,),
                                      ],
                                    ),
                                  ),
                                ),
                                BounceButton(
                                  onPressed: () {
                                    debugPrint('ekspetasi gaji');
                                  },
                                  child: Container(
                                    color: transparentColor,
                                    padding: const EdgeInsets.only(
                                      left: 20,
                                      right: 20,
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ekspetasi Gaji',
                                              style: Poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w300,
                                                  color: coolGrey
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              'Rp. 8.000.000,-',
                                              style: Poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Icon(Icons.arrow_forward_ios, size: 20,),
                                      ],
                                    ),
                                  ),
                                ),
                                BounceButton(
                                  onPressed: () {
                                    debugPrint('gaji minimum');
                                  },
                                  child: Container(
                                    color: transparentColor,
                                    padding: const EdgeInsets.only(
                                      left: 20,
                                      right: 20,
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Permintaan gaji minimum',
                                              style: Poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w300,
                                                  color: coolGrey
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width - 115,
                                              child: Text(
                                                'Rp. 4.000.000,-',
                                                style: Poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Icon(Icons.arrow_forward_ios, size: 20,),
                                      ],
                                    ),
                                  ),
                                ),
                                BounceButton(
                                  onPressed: () {
                                    debugPrint('situasi');
                                  },
                                  child: Container(
                                    color: transparentColor,
                                    padding: const EdgeInsets.only(
                                      left: 20,
                                      right: 20,
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Situasi kamu saat ini',
                                              style: Poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w300,
                                                  color: coolGrey
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              'Terbuka untuk bekerja',
                                              style: Poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Icon(Icons.arrow_forward_ios, size: 20,),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 130),
                        ],
                      ),
                    ),
            ),
          ),

        ],
      ),
      bottomNavigationBar: controller.userRole == 'Pemberi Kerja'
          ? Container(
              color: whiteSkin,
              padding: const EdgeInsets.only(
                  left: 15, top: 15, right: 15, bottom: 15),
              child: ReusableButton(
                height: 50,
                textSize: 15,
                fontWeight: FontWeight.w400,
                title: 'Simpan',
                onPressed: () {},
                buttonColor: skyBlue,
                textColor: whiteSkin,
              ),
            )
          : const SizedBox.shrink(),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Poppins()),
        const SizedBox(height: 10),
        TextFieldCustom(
          controller: controller,
          cursorColor: pureBlack,
          hintColor: neutralGrey,
          hintText: '',
          lebel: '',
          cursorHeight: 20,
          borderSide: BorderSide(color: pureBlack, width: 1),
          focusedBorderSide: BorderSide(color: pureBlack, width: 1),
          enabledBorderSide: BorderSide(color: pureBlack, width: 1),
          errorBorderSide: BorderSide(color: redBull, width: 2),
        ),
      ],
    );
  }
}
