part of '../../pages.dart';

TextStyle Poppins({
  double? fontSize,
  FontWeight? fontWeight,
  Color? color,
  TextDecoration? decoration,
  Color? decorationColor,
  double? height,
}) {
  return GoogleFonts.poppins(
    fontSize: fontSize ?? 15,
    fontWeight: fontWeight ?? FontWeight.normal,
    color: color ?? pureBlack,
    decoration: decoration ?? TextDecoration.none,
    decorationColor: decorationColor,
    decorationThickness: 2,
    height: height ?? 1.5,
  );
}

final List<Language> languageList = [
  Language(id: '1', bahasa: 'ID'),
  Language(id: '2', bahasa: 'EN'),
  Language(id: '3', bahasa: '한국'),
];

final List<Person> personList = [
  Person(id: '1', pengguna: 'Pemberi Kerja'),
  Person(id: '2', pengguna: 'Pencari Kerja'),
];

final List<Kelamin> kelaminList = [
  Kelamin(id: '1', kelaminUser: 'Laki-laki'),
  Kelamin(id: '2', kelaminUser: 'Perempuan'),
];

final List<Pendidikan> pendidikanList = [
  Pendidikan(id: '1', lulusan: 'SD/MI'),
  Pendidikan(id: '2', lulusan: 'SMP/Mts'),
  Pendidikan(id: '3', lulusan: 'SMK/SMA'),
  Pendidikan(id: '4', lulusan: 'D1-D4'),
  Pendidikan(id: '5', lulusan: 'S1'),
  Pendidikan(id: '6', lulusan: 'S2'),
  Pendidikan(id: '7', lulusan: 'S3'),
];

final List<Situasi> situasiList = [
  Situasi(id: '1', situasiUser: 'Sangat membutuhkan pekerjaan'),
  Situasi(id: '2', situasiUser: 'Sedang aktif mencari pekerjaan'),
  Situasi(id: '3', situasiUser: 'Terbuka untuk peluang baru'),
  Situasi(id: '4', situasiUser: 'Sedang bekerja, ingin berkembang'),
  Situasi(id: '5', situasiUser: 'Baru lulus (Fresh Graduate)'),
  Situasi(id: '6', situasiUser: 'Sedang jeda karier (Career Break)'),
  Situasi(id: '7', situasiUser: 'Hanya eksplorasi peluang'),
];

final List<JenisPekerjaan> jenisPekerjaanList = [
  JenisPekerjaan(id: '1', jenis_pekerjaan: 'Magang'),
  JenisPekerjaan(id: '2', jenis_pekerjaan: 'Paruh Waktu'),
];

final List<Kebijakan> kebijakanList = [
  Kebijakan(id: '1', rules: 'Remote'),
  Kebijakan(id: '2', rules: 'On-site'),
  Kebijakan(id: '3', rules: 'Hybrid'),
];

final List<KategoriPerusahaan> kategoriPerusahaanList = [
  KategoriPerusahaan(id: '1', kategori_perusahaan: 'F&B'),
  KategoriPerusahaan(id: '2', kategori_perusahaan: 'Design'),
  KategoriPerusahaan(id: '3', kategori_perusahaan: 'Marketing'),
  KategoriPerusahaan(id: '3', kategori_perusahaan: 'Dll'),
];

final List<Map<String, String>> never_worked = [
  {"id": "1", "never_worked": "Belum pernah bekerja"},
];

final List<Dream> dreamList = [
  Dream(id: '1', dreamUser: 'Sangat membutuhkan pekerjaan'),
  Dream(id: '2', dreamUser: 'Sedang aktif mencari pekerjaan'),
  Dream(id: '3', dreamUser: 'Terbuka untuk peluang baru'),
  Dream(id: '4', dreamUser: 'Sedang bekerja, ingin berkembang'),
  Dream(id: '5', dreamUser: 'Baru lulus (Fresh Graduate)'),
  Dream(id: '6', dreamUser: 'Sedang jeda karier (Career Break)'),
  Dream(id: '7', dreamUser: 'Hanya eksplorasi peluang'),
];

final List<Lokasi> lokasiList = [
  Lokasi(id: '1', lokasiUser: 'Sangat membutuhkan pekerjaan'),
  Lokasi(id: '2', lokasiUser: 'Sedang aktif mencari pekerjaan'),
  Lokasi(id: '3', lokasiUser: 'Terbuka untuk peluang baru'),
  Lokasi(id: '4', lokasiUser: 'Sedang bekerja, ingin berkembang'),
  Lokasi(id: '5', lokasiUser: 'Baru lulus (Fresh Graduate)'),
  Lokasi(id: '6', lokasiUser: 'Sedang jeda karier (Career Break)'),
  Lokasi(id: '7', lokasiUser: 'Hanya eksplorasi peluang'),
];