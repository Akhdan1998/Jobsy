import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:delightful_toast/delight_toast.dart';
import 'package:delightful_toast/toast/components/toast_card.dart';
import 'package:delightful_toast/toast/utils/enums.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:jobsy/models/jenis_pekerjaan.dart';
import 'package:jobsy/models/kategori_perusahaan.dart';
import 'package:jobsy/models/kebijakan.dart';
import 'package:jobsy/models/kelamin.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supercharged/supercharged.dart';

import 'models/language.dart';
import 'models/lokasi.dart';
import 'models/minat_lowongan.dart';
import 'models/pendidikan.dart';
import 'models/person.dart';
import 'models/situasi.dart';

part 'utils/constant.dart';

part 'utils/helpers.dart';

part 'widgets/container/container.dart';

part 'widgets/divider/divider.dart';

part 'widgets/appbar/appbar.dart';

part 'widgets/badge/badge.dart';

part 'widgets/button/reusable_button.dart';

part 'widgets/button/bounce_button.dart';

part 'widgets/dialog/dialog.dart';

part 'widgets/checkbox/checkbox.dart';

part 'widgets/image_picker/image_picker.dart';

part 'widgets/data_picker/date_picker.dart';

part 'widgets/loader/loader.dart';

part 'widgets/radio/radio.dart';

part 'widgets/sheet_bottom/sheet_bottom.dart';

part 'widgets/text_form_field/text_form_field.dart';

part 'widgets/toast/toast.dart';

part 'widgets/dropdown/dropdown.dart';

part 'widgets/otp/otp.dart';

part 'features/splash/splash.dart';

part 'features/signin/signin.dart';

part 'features/navigation/navigation.dart';

part 'features/dashboard/beranda.dart';

part 'features/dashboard/beranda_controller.dart';

part 'features/obrolan/obrolan.dart';

part 'features/profil/profil.dart';

part 'features/whatsapp/whatsapp.dart';

part 'features/whatsapp/whatsapp_controller.dart';

part 'features/profil/profil_controller.dart';

part 'features/navigation/navigation_controller.dart';

part 'features/dashboard/status/review.dart';

part 'features/dashboard/status/aktif.dart';

part 'features/dashboard/status/nonaktif.dart';

part 'features/dashboard/status/draf.dart';

part 'features/dashboard/filters/baru.dart';

part 'features/dashboard/filters/darirumah.dart';

part 'features/dashboard/filters/lulusanbaru.dart';

part 'features/dashboard/filters/untukkamu.dart';

part 'features/dashboard/detail/detail.dart';

part 'features/dashboard/detail/detail_controller.dart';

part 'features/form/form.dart';

part 'features/form/form_controller.dart';

part 'features/form/pemberi_kerja/rekruter/rekruter.dart';

part 'features/form/pemberi_kerja/rekruter/rekruter_controller.dart';

part 'features/form/pemberi_kerja/review_pemberi_kerja/review.dart';

part 'features/form/pemberi_kerja/review_pemberi_kerja/review_controller.dart';

part 'features/form/pemberi_kerja/job/job.dart';

part 'features/form/pemberi_kerja/job/job_controller.dart';

part 'features/dashboard/detail/perusahaan/perusahaan.dart';

part 'features/profil/ubah_profil/ubah_profil.dart';

part 'features/profil/ubah_profil/ubah_profil_controller.dart';

part 'features/form/pencari_kerja/tentang_saya/tentang_saya_controller.dart';

part 'features/form/pencari_kerja/tentang_saya/tentang_saya_screen.dart';

part 'features/form/pencari_kerja/pengalaman_kerja/pengalaman_kerja_controller.dart';

part 'features/form/pencari_kerja/pengalaman_kerja/pengalaman_kerja_screen.dart';

part 'features/form/pencari_kerja/dream_job/dream_job_controller.dart';

part 'features/form/pencari_kerja/dream_job/dream_job_screen.dart';

part 'features/form/pencari_kerja/review_pencari_kerja/review_pencari_kerja_controller.dart';

part 'features/form/pencari_kerja/review_pencari_kerja/review_pencari_kerja_screen.dart';
