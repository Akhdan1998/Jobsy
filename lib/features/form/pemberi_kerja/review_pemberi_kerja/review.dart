part of '../../../../pages.dart';

class DaftarReviewPemberiKerja extends StatelessWidget {
  const DaftarReviewPemberiKerja({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteSkin,
      body: Container(
        padding: const EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Tinjau Data Anda',
                  style: Poppins(fontWeight: FontWeight.w600, fontSize: 14)),
              Text('Apakah informasi yang Anda kirimkan benar?',
                  style: Poppins(fontSize: 13)),
              const SizedBox(height: 15),

              // --- Informasi Perusahaan ---
              _sectionHeader('Informasi Perusahaan', context),
              const SizedBox(height: 15),
              _infoItem('Nama Rekruter', 'Pendekar Gendut'),
              const SizedBox(height: 30),
              _infoItem('Posisi Pekerjaan Rekruter', 'Software Engineer'),
              const SizedBox(height: 30),
              _infoItem('Nama Perusahaan', 'PT. Kolink Network Solutions'),
              const SizedBox(height: 30),
              _infoItem('Nama Bisnis', 'Agency IT'),
              const SizedBox(height: 30),
              _infoItem(
                'Lokasi Kantor',
                'Jl. Trembesi Blok D, Pademangan Tim., Kec. Pademangan, Jkt Utara, Daerah Khusus Ibukota Jakarta 14410',
              ),
              const SizedBox(height: 15),

              // --- Job Vacancy Information ---
              _sectionHeader('Job Vacancy Information', context),
              const SizedBox(height: 15),
              _infoItem('Nama Pekerjaan', 'Software Engineer'),
              const SizedBox(height: 30),
              _infoItem('Bidang Pekerjaan', 'UIUX Designer'),
              const SizedBox(height: 30),
              _infoItem('Lowongan Tersedia', '2'),
              const SizedBox(height: 30),
              _infoItem('Usia', '19-28'),
              const SizedBox(height: 30),
              _infoItem('Jenis Kelamin', 'Laki-laki'),
              const SizedBox(height: 30),
              _infoItem('Pendidikan Minimum', 'Strata 1 (Sarjana)'),
              const SizedBox(height: 30),
              _infoItem('Kebijakan Kerja', 'On-Site'),
              const SizedBox(height: 30),
              _infoItem('Jenis Pekerjaan', 'Magang'),
              const SizedBox(height: 30),
              _infoItem('Kategori Profesi', 'Waiter'),
              const SizedBox(height: 30),
              _infoItem('Gaji / Upah', 'Rp. 200.000,- /hari'),
              const SizedBox(height: 30),
              _infoList('Kualifikasi / Syarat', [
                'Bisa kerja minimal 3 hari/minggu',
                'Punya pengalaman desain jadi nilai plus',
                'Mahasiswa aktif jurusan apa saja',
              ]),
              const SizedBox(height: 30),
              _infoList('Deskripsi Pekerjaan', [
                'Menyambut tamu',
                'Mengantarkan menu',
                'Menerima pesanan',
                'Menyajikan makanan dan minuman',
                'Memastikan kepuasan pelanggan',
              ]),
              const SizedBox(height: 30),
              _infoItem('Hari Kerja', 'Rabu, 16 Juli 2025 - Kamis, 31 Juli 2025'),
              const SizedBox(height: 30),
              _infoItem('Waktu Kerja', '08:00 - 17-00'),
              const SizedBox(height: 30),
              _infoItem('Skill', '-'),
              const SizedBox(height: 30),
              _infoItem('Portofolio', '-'),
              const SizedBox(height: 30),
              _infoList('Aset', ['Laptop', 'Smartphone', 'Tablet']),
            ],
          ),
        ),
      ),
    );
  }

  Widget _sectionHeader(String title, BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 12, bottom: 12),
      width: MediaQuery.of(context).size.width,
      color: neutralGrey.withOpacity(0.2),
      child: Text(
        title,
        style: Poppins(fontSize: 14),
      ),
    );
  }

  Widget _infoItem(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Poppins(fontSize: 13, color: coolGrey),
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: Poppins(fontSize: 13, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget _infoList(String label, List<String> values) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Poppins(fontSize: 13, color: coolGrey),
        ),
        const SizedBox(height: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: values
              .map((v) => Text(
                    '• $v',
                    style: Poppins(fontSize: 13, fontWeight: FontWeight.w500),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
