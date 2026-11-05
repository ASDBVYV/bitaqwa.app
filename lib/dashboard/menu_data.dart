import 'package:bitaqwa/dashboard/menu_model.dart';

// DATA MENU DASHBOARD: Daftar 4 tombol menu utama di beranda aplikasi
final List<MenuModel> menus = [
  // Menu 1: Kumpulan Doa - (Tugas 4, belum dihubungkan)
  MenuModel(
    title: "Doa-doa",
    deskripsi: "Kumpulan doa harian.",
    image: "assets/images/ic_menu_doa.png",
    route: "doa",
  ),  
  // Menu 2: Kalkulator Zakat - (Tugas 2, belum dihubungkan)
  MenuModel(
    title: "Zakat",
    deskripsi: "Bantu hitung dan tunaikan zakat.",
    image: "assets/images/ic_menu_zakat.png",
    route: "zakat",
  ),
  // Menu 3: Jadwal Sholat - (Tugas 5, belum dihubungkan)
  MenuModel(
    title: "Jadwal Sholat",
    deskripsi: "Lihat Jadwal Sholat lima waktu .",
    image: "assets/images/ic_menu_jadwal_sholat.png",
    route: "jadwal-sholat",
  ),
  // Menu 4: Video Kajian - (Tugas 3, belum dihubungkan)
  MenuModel(
    title: "Video Kajian",
    deskripsi: "Tonton kajian Islam.",
    image: "assets/images/ic_menu_video_kajian.png",
    route: "video-kajian",
  ),
];
