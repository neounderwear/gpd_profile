import 'package:flutter/material.dart';

class ContactWeb extends StatelessWidget {
  final GlobalKey globalKey;

  const ContactWeb({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      key: globalKey,
      height: size.height * 0.4,
      width: size.width,
      child: Column(
        children: [
          SizedBox(
            width: size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.1,
                vertical: size.height * 0.03,
              ),
              child: Column(children: [Text('Kontak')]),
            ),
          ),
        ],
      ),
    );
  }
}
