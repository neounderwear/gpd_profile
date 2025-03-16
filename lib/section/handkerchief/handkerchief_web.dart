import 'package:flutter/material.dart';
import 'package:gpd_web/const/section_header.dart';

class HandkerchiefWeb extends StatelessWidget {
  final GlobalKey globalKey;

  const HandkerchiefWeb({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      key: globalKey,
      height: size.height,
      width: size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.1,
          vertical: size.height * 0.03,
        ),
        child: Column(
          children: [SectionHeader(label: 'Saputangan', size: size)],
        ),
      ),
    );
  }
}
