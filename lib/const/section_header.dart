import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String label;
  const SectionHeader({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40.0,
      width: 180.0,
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
