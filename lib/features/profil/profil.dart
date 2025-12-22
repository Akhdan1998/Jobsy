part of '../../pages.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  String? userRole;

  @override
  void initState() {
    super.initState();
    _loadUserRole();
  }

  Future<void> _loadUserRole() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      userRole = prefs.getString('selectedUserRole');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteSkin,
      body: Center(
        child: _buildCard(
          boxShadow: [
            const BoxShadow(
              color: transparentColor,
              spreadRadius: 0,
              blurRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Platform.isIOS ? 30 : 10),
            topRight: Radius.circular(Platform.isIOS ? 30 : 10),
            bottomRight: Radius.circular(Platform.isIOS ? 20 : 10),
            bottomLeft: Radius.circular(Platform.isIOS ? 20 : 10),
          ),
          color: whiteSkin,
          context: context,
          padding: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              userRole == 'Pemberi Kerja'
                  ? Column(
                      children: [
                        SizedBox(height: 50),
                        Image.asset('assets/images/company.png'),
                        SizedBox(height: 50),
                        Text(
                          'PT. Kolink Network Solutions',
                          style: Poppins(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Pendekar Gendut',
                          style: Poppins(fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'pendekargendut@gmail.com',
                          style: Poppins(fontWeight: FontWeight.normal),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '081290763984',
                          style: Poppins(fontWeight: FontWeight.normal),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IntrinsicWidth(
                              child: _buildCard(
                                context: context,
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  '7 Pelamar',
                                  style: Poppins(
                                    fontWeight: FontWeight.w500,
                                    color: skyBlue,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            IntrinsicWidth(
                              child: _buildCard(
                                context: context,
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  '12 Interview',
                                  style: Poppins(
                                    fontWeight: FontWeight.w500,
                                    color: skyBlue,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 50),
                        Image.asset('assets/images/profil.png'),
                        SizedBox(height: 50),
                        Text(
                          'Pendekar Gendut',
                          style: Poppins(fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '081290763984',
                          style: Poppins(fontWeight: FontWeight.normal),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'pendekargendut@gmail.com',
                          style: Poppins(fontWeight: FontWeight.normal),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IntrinsicWidth(
                              child: _buildCard(
                                context: context,
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  '187 Melamar',
                                  style: Poppins(
                                    fontWeight: FontWeight.w500,
                                    color: skyBlue,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            IntrinsicWidth(
                              child: _buildCard(
                                context: context,
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  '12 Undangan',
                                  style: Poppins(
                                    fontWeight: FontWeight.w500,
                                    color: skyBlue,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
              _buildCard(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
                padding: EdgeInsets.zero,
                context: context,
                color: skyBlue,
                boxShadow: [
                  const BoxShadow(
                    color: transparentColor,
                    spreadRadius: 0,
                    blurRadius: 0,
                  ),
                ],
                child: Stack(
                  children: [
                    Positioned(
                      top: 60,
                      left: -100,
                      child: Image.asset('assets/images/efek1.png'),
                    ),
                    Positioned(
                      top: -100,
                      child: Image.asset('assets/images/efek2.png'),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ReusableButton(
                              buttonColor: whiteSkin,
                              textColor: skyBlue,
                              textSize: 10,
                              height: 103,
                              width: 103,
                              margin: EdgeInsets.only(left: 20, top: 20),
                              iconPosition: IconPosition.top,
                              imageAsset: 'assets/images/media.png',
                              imageColor: skyBlue,
                              imageWidth: 25,
                              imageHeight: 25,
                              title: userRole == 'Pemberi Kerja'
                                  ? 'Aktifitas Karyawan'
                                  : 'Video Saya',
                              onPressed: userRole == 'Pemberi Kerja'
                                  ? () {
                                      debugPrint('PEMBERI KERJA');
                                    }
                                  : () {
                                      debugPrint('PENCARI KERJA');
                                    },
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            ReusableButton(
                              buttonColor: whiteSkin,
                              textColor: skyBlue,
                              textSize: 10,
                              height: 103,
                              width: 103,
                              margin: EdgeInsets.only(top: 20),
                              iconPosition: IconPosition.top,
                              imageAsset: 'assets/images/edit.png',
                              imageColor: skyBlue,
                              imageWidth: 30,
                              imageHeight: 30,
                              title: 'Ubah Profil',
                              onPressed: () {
                                Get.to(UbahProfil());
                              },
                            ),
                            ReusableButton(
                              buttonColor: whiteSkin,
                              textColor: skyBlue,
                              textSize: 10,
                              height: 103,
                              width: 103,
                              margin: EdgeInsets.only(right: 20, top: 20),
                              iconPosition: IconPosition.top,
                              imageAsset: userRole == 'Pemberi Kerja'
                                  ? 'assets/images/low.png'
                                  : 'assets/images/docs.png',
                              imageColor: skyBlue,
                              imageWidth: 30,
                              imageHeight: 30,
                              title: userRole == 'Pemberi Kerja'
                                  ? 'Pasang Lowongan'
                                  : 'Dokumen',
                              onPressed: userRole == 'Pemberi Kerja'
                                  ? () {
                                      debugPrint('PEMBERI KERJA');
                                    }
                                  : () {
                                      debugPrint('PENCARI KERJA');
                                    },
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        ReusableButton(
                          buttonColor: whiteSkin,
                          textColor: skyBlue,
                          textSize: 12,
                          height: 55,
                          // width: 103,
                          margin: EdgeInsets.only(left: 20, right: 20),
                          iconPosition: IconPosition.left,
                          imageAsset: 'assets/images/setting.png',
                          imageColor: skyBlue,
                          imageWidth: 25,
                          imageHeight: 25,
                          title: 'Pengaturan',
                          onPressed: userRole == 'Pemberi Kerja'
                              ? () {
                                  debugPrint('PEMBERI KERJA');
                                }
                              : () {
                                  debugPrint('PENCARI KERJA');
                                },
                        ),
                        SizedBox(height: 15),
                        ReusableButton(
                          buttonColor: whiteSkin,
                          textColor: skyBlue,
                          textSize: 12,
                          height: 55,
                          // width: 103,
                          margin:
                              EdgeInsets.only(left: 20, right: 20, bottom: 20),
                          iconPosition: IconPosition.left,
                          imageAsset: 'assets/images/logout.png',
                          imageColor: skyBlue,
                          imageWidth: 25,
                          imageHeight: 25,
                          title: 'Keluar',
                          onPressed: userRole == 'Pemberi Kerja'
                              ? () {
                                  debugPrint('PEMBERI KERJA');
                                }
                              : () {
                                  debugPrint('PENCARI KERJA');
                                },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
