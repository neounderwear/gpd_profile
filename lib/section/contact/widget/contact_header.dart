import 'package:flutter/material.dart';

class ContactHeader extends StatelessWidget {
  final String label;
  const ContactHeader({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
    );
  }
}
