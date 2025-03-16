import 'package:flutter/material.dart';

class LandingPageWeb extends StatelessWidget {
  final GlobalKey globalKey;

  const LandingPageWeb({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      key: globalKey,
      height: size.height,
      width: size.width,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Flexible(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Solusi Pakaian Dalam Anda',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Text(
                        'Gudang Pakaian Dalam',
                        style: TextStyle(
                          fontSize: 46.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Menyediakan berbagai macam Pakaian Dalam Multi-brand pria, Wanita, Dewasa dan Anak-anak',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      Text(
                        'Produk 100% Original',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
                Flexible(flex: 1, child: Text('Gambar')),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: size.height * 0.1,
            width: size.width * 0.6,
            decoration: BoxDecoration(
              color: Color(0xFFCAAC8D),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
            ),
            child: Text(
              'PUSATNYA PAKAIAN DALAM ORIGINAL, BERKUALITAS & TERPERCAYA',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
