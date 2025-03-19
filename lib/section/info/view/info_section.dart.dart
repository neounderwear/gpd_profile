import 'package:flutter/material.dart';
import 'package:gpd_web/const/section_header.dart';
import 'package:gpd_web/section/info/widget/picture_card.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoSection extends StatelessWidget {
  final GlobalKey globalKey;

  const InfoSection({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width < 768;

    return Container(
      key: globalKey,
      width: size.width,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 231, 225, 217),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.1,
          vertical: size.height * 0.03,
        ),
        child: Column(
          children: [
            SectionHeader(label: 'Tentang Kami'),
            SizedBox(height: isMobile ? 24.0 : 36.0),

            isMobile
                ? _buildFirstSectionMobile(size)
                : _buildFirstSectionDesktop(size),

            SizedBox(height: isMobile ? 24.0 : 36.0),
            Divider(),
            SizedBox(height: isMobile ? 24.0 : 36.0),

            isMobile
                ? _buildSecondSectionMobile(size, context)
                : _buildSecondSectionDesktop(size, context),
          ],
        ),
      ),
    );
  }

  Widget _buildFirstSectionDesktop(Size size) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: PictureCard(
            size: size,
            label: 'Toko Offline',
            imageUrl: 'assets/images/offline.jpg',
          ),
        ),
        const SizedBox(width: 12.0),
        Expanded(
          child: SizedBox(
            height: size.height * 0.4,
            child: Column(
              children: [
                Text(
                  'Gudang Pakaian Dalam adalah distributor resmi berbagai merek pakaian dalam berkualitas tinggi yang telah dipercaya oleh pelanggan di Indonesia. Dengan pengalaman lebih dari 20 tahun, kami menjadi penyedia utama underwear multibrand yang menghadirkan produk-produk terbaik untuk memenuhi kebutuhan kenyamanan dan gaya hidup masyarakat.',
                  style: TextStyle(color: Color(0XFF594838), fontSize: 16.0),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 12.0),
                Text(
                  'Sebagai distributor yang berkomitmen pada kualitas, Gudang Pakaian Dalam hanya menyediakan produk dari merek-merek ternama yang telah teruji kenyamanannya. Kami melayani berbagai segmen pasar, mulai dari kebutuhan sehari-hari hingga pilihan premium dengan material terbaik. Dengan jaringan distribusi yang luas, kami memastikan ketersediaan produk yang lengkap dan kemudahan akses bagi pelanggan di seluruh Indonesia.',
                  style: TextStyle(color: Color(0XFF594838), fontSize: 16.0),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFirstSectionMobile(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        PictureCard(
          size: size,
          label: 'Toko Offline',
          imageUrl: 'assets/images/offline.jpg',
        ),
        const SizedBox(height: 16.0),
        Text(
          'Gudang Pakaian Dalam adalah distributor resmi berbagai merek pakaian dalam berkualitas tinggi yang telah dipercaya oleh pelanggan di Indonesia. Dengan pengalaman lebih dari 20 tahun, kami menjadi penyedia utama underwear multibrand yang menghadirkan produk-produk terbaik untuk memenuhi kebutuhan kenyamanan dan gaya hidup masyarakat.',
          style: TextStyle(color: Color(0XFF594838), fontSize: 16.0),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 12.0),
        Text(
          'Sebagai distributor yang berkomitmen pada kualitas, Gudang Pakaian Dalam hanya menyediakan produk dari merek-merek ternama yang telah teruji kenyamanannya. Kami melayani berbagai segmen pasar, mulai dari kebutuhan sehari-hari hingga pilihan premium dengan material terbaik. Dengan jaringan distribusi yang luas, kami memastikan ketersediaan produk yang lengkap dan kemudahan akses bagi pelanggan di seluruh Indonesia.',
          style: TextStyle(color: Color(0XFF594838), fontSize: 16.0),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }

  Widget _buildSecondSectionDesktop(Size size, BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.1,
                child: Text(
                  'Kepercayaan pelanggan adalah prioritas utama kami. Oleh karena itu, kami selalu mengutamakan pelayanan yang profesional, harga kompetitif, dan kepastian keaslian produk. Gudang Pakaian Dalam siap menjadi mitra terbaik bagi peritel, grosir, maupun pelanggan individu dalam menyediakan pakaian dalam berkualitas tinggi yang nyaman dan stylish.',
                  style: TextStyle(color: Color(0XFF594838), fontSize: 16.0),
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(height: 12.0),
              PictureCard(
                size: size,
                label: 'Gudang',
                imageUrl: 'assets/images/warehouse.png',
              ),
            ],
          ),
        ),
        const SizedBox(width: 9.0),
        VerticalDivider(),
        const SizedBox(width: 9.0),
        Expanded(child: _buildMapSection(size, context)),
      ],
    );
  }

  Widget _buildSecondSectionMobile(Size size, BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.stretch, // Menjadikan konten selebar parent
      children: [
        Text(
          'Kepercayaan pelanggan adalah prioritas utama kami. Oleh karena itu, kami selalu mengutamakan pelayanan yang profesional, harga kompetitif, dan kepastian keaslian produk. Gudang Pakaian Dalam siap menjadi mitra terbaik bagi peritel, grosir, maupun pelanggan individu dalam menyediakan pakaian dalam berkualitas tinggi yang nyaman dan stylish.',
          style: TextStyle(color: Color(0XFF594838), fontSize: 16.0),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 16.0),
        // Menggunakan PictureCard langsung tanpa wrapper SizedBox
        PictureCard(
          size: size,
          label: 'Gudang',
          imageUrl: 'assets/images/warehouse.png',
        ),
        const SizedBox(height: 24.0),
        Divider(),
        const SizedBox(height: 24.0),
        // Menyesuaikan Map untuk menggunakan lebar yang sama
        _buildMapSection(size, context, isMobile: true),
      ],
    );
  }

  Widget _buildMapSection(
    Size size,
    BuildContext context, {
    bool isMobile = false,
  }) {
    // Untuk mobile, gunakan seluruh lebar yang tersedia
    double mapWidth = isMobile ? double.infinity : size.width * 0.5;
    double mapHeight = isMobile ? size.height * 0.3 : size.height * 0.5 + 12;

    return InkWell(
      onTap: () async {
        final Uri uri = Uri.parse(
          "https://www.google.com/maps?q=Gudang+Pakaian+Dalam,+Tiangseng+Komplek+Rukan+Pangeran+Jayakarta+Center+Blok+E2.+12,+Jl.+Pangeran+Jayakarta+No.73,+RT.3/RW.6,+Mangga+Dua+Sel.,+Kecamatan+Sawah+Besar,+Kota+Jakarta+Pusat,+Daerah+Khusus+Ibukota+Jakarta+10730&ftid=0x2e69f550e5f7cb1b:0x988d09f13c1b2165&entry=gps&lucs=,94242514,94224825,94227247,94227248,47071704,94206166,47069508,94218641,94203019,47084304,94208458,94208447&g_ep=CAISDTYuMTI2LjMuNzY1MDAYACCenQoqbCw5NDI0MjUxNCw5NDIyNDgyNSw5NDIyNzI0Nyw5NDIyNzI0OCw0NzA3MTcwNCw5NDIwNjE2Niw0NzA2OTUwOCw5NDIxODY0MSw5NDIwMzAxOSw0NzA4NDMwNCw5NDIwODQ1OCw5NDIwODQ0N0ICSUQ%3D&g_st=com.google.maps.preview.copy",
        );
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        } else {
          throw "Tidak dapat membuka url";
        }
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: mapHeight,
            width: mapWidth,
            decoration: BoxDecoration(
              color: Colors.brown,
              border: Border.all(width: 6.0, color: Colors.brown),
              borderRadius: const BorderRadius.all(Radius.circular(12.0)),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              child: Image.asset('assets/images/maps.png', fit: BoxFit.cover),
            ),
          ),
          Container(
            height: mapHeight,
            width: mapWidth,
            decoration: const BoxDecoration(
              color: Color(0x80795548),
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 40.0,
            width: 170.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(24.0)),
            ),
            child: const Text(
              'Kunjungi Maps',
              style: TextStyle(
                color: Colors.brown,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
