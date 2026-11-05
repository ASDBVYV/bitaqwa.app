import 'package:bitaqwa/dashboard/menu_data.dart';
import 'package:bitaqwa/dashboard/color_constant.dart';
import 'package:flutter/material.dart';

// SCREEN BASIC DASHBOARD: Tampilan beranda aplikasi yang menyapa pengguna dan menampilkan menu fitur
class BasicDashboardScreen extends StatelessWidget {
  const BasicDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 187, 75, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. BANNER HEADER ATAS
            Container(
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/makkah.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
                color: ColorConstant.colorPrimary,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Bitaqwa is an Islamic app that helps Muslims practice daily worship through features like Al-Quran, prayer times, daily duas, Islamic lectures, and more.",
                    style: TextStyle(fontSize: 18, color: Colors.white70),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Bitaqwa App',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // 2. GRID MENU FITUR (4 TOMBOL MENU UTAMA)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GridView.builder(
                shrinkWrap: true, // Grid menyesuaikan tinggi konten
                physics:
                    const NeverScrollableScrollPhysics(), // Scroll mengikuti layar utama
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 Kolom menu
                  crossAxisSpacing: 16, // Jarak horizontal
                  mainAxisSpacing: 16, // Jarak vertikal
                  childAspectRatio: 0.95, // Proporsi tombol
                ),
                itemCount: menus.length,
                itemBuilder: (context, index) {
                  final menu = menus[index];
                  return InkWell(
                    // Saat menu diklik, buka alamat rute navigasi yang bersangkutan
                    onTap: () {
                      Navigator.pushNamed(context, menu.route);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorConstant.colorAccent,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Gambar Ikon Menu
                          Image.asset(menu.image, height: 60, width: 60),
                          const SizedBox(height: 8),
                          // Label Judul Menu
                          Text(
                            menu.title,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: ColorConstant.colorText,
                            ),
                          ),
                          SizedBox(height: 4,),
                          Text(
                            menu.deskripsi,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 5,
                              color: Color.fromARGB(0,0,0,0),
                            
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
