import 'package:flutter/material.dart';

class ContactWeb extends StatelessWidget {
  final GlobalKey globalKey;

  const ContactWeb({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      key: globalKey,
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              width: size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 231, 225, 217),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1,
                  vertical: size.height * 0.03,
                ),
                child: Column(
                  children: [
                    Text(
                      'Testimoni Sobat Gudang',
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: SizedBox(
              width: size.width,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1,
                  vertical: size.height * 0.03,
                ),
                child: Column(children: [Text('Kontak')]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
