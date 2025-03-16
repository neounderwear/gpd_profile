import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String label;
  final Size size;
  const SectionHeader({super.key, required this.size, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: size.height * 0.05,
      width: size.width * 0.1,
      decoration: BoxDecoration(
        color: Color(0xFFCAAC8D),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),

      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
