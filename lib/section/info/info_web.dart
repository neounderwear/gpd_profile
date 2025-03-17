import 'package:flutter/material.dart';
import 'package:gpd_web/const/section_header.dart';
import 'package:gpd_web/section/info/widget/picture_card.dart';

class InfoWeb extends StatelessWidget {
  final GlobalKey globalKey;

  const InfoWeb({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
            const SizedBox(height: 36.0),
            Row(
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
                    height: size.height * 0.3,
                    child: Column(
                      children: [
                        Text(
                          'Gudang Pakaian Dalam adalah distributor resmi berbagai merek pakaian dalam berkualitas tinggi yang telah dipercaya oleh pelanggan di Indonesia. Dengan pengalaman lebih dari 20 tahun, kami menjadi penyedia utama underwear multibrand yang menghadirkan produk-produk terbaik untuk memenuhi kebutuhan kenyamanan dan gaya hidup masyarakat.',
                          style: TextStyle(
                            color: Color(0XFF594838),
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(height: 12.0),
                        Text(
                          'Sebagai distributor yang berkomitmen pada kualitas, Gudang Pakaian Dalam hanya menyediakan produk dari merek-merek ternama yang telah teruji kenyamanannya. Kami melayani berbagai segmen pasar, mulai dari kebutuhan sehari-hari hingga pilihan premium dengan material terbaik. Dengan jaringan distribusi yang luas, kami memastikan ketersediaan produk yang lengkap dan kemudahan akses bagi pelanggan di seluruh Indonesia.',
                          style: TextStyle(
                            color: Color(0XFF594838),
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 36.0),
            Divider(),
            const SizedBox(height: 36.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.1,
                        child: Text(
                          'Kepercayaan pelanggan adalah prioritas utama kami. Oleh karena itu, kami selalu mengutamakan pelayanan yang profesional, harga kompetitif, dan kepastian keaslian produk. Gudang Pakaian Dalam siap menjadi mitra terbaik bagi peritel, grosir, maupun pelanggan individu dalam menyediakan pakaian dalam berkualitas tinggi yang nyaman dan stylish.',
                          style: TextStyle(
                            color: Color(0XFF594838),
                            fontSize: 16.0,
                          ),
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
                Divider(),
                const SizedBox(width: 9.0),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: size.height * 0.5 + 12,
                          width: size.width * 0.5,
                          decoration: BoxDecoration(
                            color: Colors.brown,
                            border: Border.all(width: 6.0, color: Colors.brown),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            child: Image.asset(
                              'assets/images/maps.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: size.height * 0.5 + 12,
                          width: size.width * 0.5,
                          decoration: const BoxDecoration(
                            color: Color(0x80795548),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: size.height * 0.05,
                          width: size.width * 0.1,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(24.0),
                            ),
                            border: Border.all(color: Colors.brown, width: 3.0),
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
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
