import 'package:flutter/material.dart';
import 'package:gpd_web/const/section_header.dart';

class TestimonyWeb extends StatelessWidget {
  final GlobalKey globalKey;

  const TestimonyWeb({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      key: globalKey,
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 231, 225, 217),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.1,
          vertical: size.height * 0.03,
        ),
        child: Column(children: [SectionHeader(label: 'Testimoni')]),
      ),
    );
  }
}
