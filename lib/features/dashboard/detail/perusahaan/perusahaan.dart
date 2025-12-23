part of '../../../../pages.dart';

class DetailPerusahaan extends StatefulWidget {
  const DetailPerusahaan({super.key});

  @override
  State<DetailPerusahaan> createState() => _DetailPerusahaanState();
}

class _DetailPerusahaanState extends State<DetailPerusahaan> {
  final List<Map<String, dynamic>> _infoList = [
    {
      'icon': Icons.corporate_fare,
      'text': 'PT. Arkana Dwi Mutiara',
    },
    {
      'icon': Icons.location_on_outlined,
      'text': 'Jakarta Timur, DKI Jakarta, Indonesia',
    },
    {
      'icon': Icons.groups_outlined,
      'text': '11 - 50 karyawan',
    },
    {
      'icon': Icons.location_city,
      'text': 'Information Technology and Service',
    },
    {
      'icon': Icons.link,
      'text': 'https://kolink.net',
    },
  ];

  Widget _buildInfoRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: _infoList
              .map((e) => Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Icon(e['icon'], color: whiteSkin),
          ))
              .toList(),
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _infoList
              .map((e) => Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Text(e['text'], style: Poppins(color: whiteSkin)),
          ))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildSection({
    required String title,
    required String content,
    Widget? extra,
  }) {
    return _buildCard(
      context: context,
      margin: const EdgeInsets.all(3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Poppins()),
          const SizedBox(height: 10),
          _buildDivider(context),
          const SizedBox(height: 10),
          if (extra != null) extra else Text(content, style: Poppins(), textAlign: TextAlign.justify),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: _buildCard(
        context: context,
        padding: EdgeInsets.zero,
        child: Stack(
          children: [
            const CusAppBar(title: 'Detail Perusahaan'),

            // Info singkat perusahaan
            Positioned(
              top: 120,
              left: 20,
              right: 20,
              child: Center(child: _buildInfoRow()),
            ),

            // Bagian detail
            Positioned(
              top: Platform.isIOS ? size.height * 0.40 : size.height * 0.45,
              left: 0,
              right: 0,
              bottom: 0,
              child: _buildCard(
                context: context,
                width: size.width,
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 70),
                      _buildSection(
                        title: 'Tentang PT. Kolink Network Solutions (Jakarta)',
                        content:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ...',
                      ),
                      const SizedBox(height: 20),
                      _buildSection(
                        title: 'Alamat Kantor',
                        content:
                        'Jl. Trembesi Blok D, Pademangan Tim., Kec. Pademangan, Jkt Utara, Daerah Khusus Ibukota Jakarta 14410',
                      ),
                      const SizedBox(height: 20),
                      _buildSection(
                        title: 'Media Sosial',
                        content: '',
                        extra: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: whiteSkin,
                                border: Border.all(width: 1, color: pureBlack),
                                shape: BoxShape.circle,
                              ),
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/images/ms_ig.png',
                                scale: 2,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: whiteSkin,
                                border: Border.all(width: 1, color: pureBlack),
                                shape: BoxShape.circle,
                              ),
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/images/ms_in.png',
                                scale: 2,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              padding: const EdgeInsets.all(18),
                              decoration: BoxDecoration(
                                color: whiteSkin,
                                border: Border.all(width: 1, color: pureBlack),
                                shape: BoxShape.circle,
                              ),
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/images/ms_f.png',
                                scale: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      _buildSection(
                        title: 'Galeri Perusahaan',
                        content: '',
                        extra: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: whiteSkin,
                                border: Border.all(width: 1, color: pureBlack),
                                shape: BoxShape.circle,
                              ),
                              alignment: Alignment.center,
                              child: const Icon(Icons.image_outlined),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: whiteSkin,
                                border: Border.all(width: 1, color: pureBlack),
                                shape: BoxShape.circle,
                              ),
                              alignment: Alignment.center,
                              child: const Icon(Icons.image_outlined),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),

            // Foto profil perusahaan
            Positioned(
              top: Platform.isIOS ? size.height * 0.35 : size.height * 0.40,
              left: size.width * 0.40,
              child: Image.asset('assets/images/profil.png', scale: 1.5,),
            ),

            // Background efek
            Positioned(
              top: -150,
              child: IgnorePointer(
                child: Image.asset('assets/images/efek2.png'),
              ),
            ),
            Positioned(
              top: 20,
              child: IgnorePointer(
                child: Image.asset('assets/images/efek2.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
