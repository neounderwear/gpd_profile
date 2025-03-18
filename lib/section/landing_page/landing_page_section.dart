import 'package:flutter/material.dart';

class LandingPageSection extends StatelessWidget {
  final GlobalKey globalKey;

  const LandingPageSection({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width < 600;

    return SizedBox(
      key: globalKey,
      height: size.height,
      width: size.width,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? size.width * 0.08 : size.width * 0.15,
            ),
            child:
                isMobile ? _buildMobileLayout(size) : _buildDesktopLayout(size),
          ),
          Container(
            alignment: Alignment.center,
            height: isMobile ? size.height * 0.08 : size.height * 0.1,
            width: isMobile ? size.width * 0.9 : size.width * 0.6,
            decoration: BoxDecoration(
              color: const Color(0xFFCAAC8D),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
            ),
            child: Text(
              'PUSATNYA PAKAIAN DALAM ORIGINAL, BERKUALITAS & TERPERCAYA',
              style: TextStyle(
                fontSize: isMobile ? 14.0 : 18.0,
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDesktopLayout(Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Solusi Pakaian Dalam Anda',
                style: TextStyle(fontSize: 16.0),
              ),
              const Text(
                'Gudang Pakaian Dalam',
                style: TextStyle(fontSize: 46.0, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Menyediakan berbagai macam Pakaian Dalam Multi-brand pria, Wanita, Dewasa dan Anak-anak',
                style: TextStyle(fontSize: 18.0),
              ),
              const Text(
                'Produk 100% Original',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
        Expanded(
          child: Image.asset(
            'assets/images/underwear.png',
            height: size.height * 0.7,
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout(Size size) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Image first on mobile
        SizedBox(
          height: size.height * 0.35,
          child: Image.asset(
            'assets/images/underwear.png',
            height: size.height * 0.3,
          ),
        ),
        // Text content below image
        SizedBox(
          height: size.height * 0.35,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Solusi Pakaian Dalam Anda',
                style: TextStyle(fontSize: 14.0),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Gudang Pakaian Dalam',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Menyediakan berbagai macam Pakaian Dalam Multi-brand pria, Wanita, Dewasa dan Anak-anak',
                  style: TextStyle(fontSize: 14.0),
                  textAlign: TextAlign.center,
                ),
              ),
              const Text(
                'Produk 100% Original',
                style: TextStyle(fontSize: 14.0),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
