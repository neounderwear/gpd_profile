import 'package:flutter/material.dart';

class HeaderNav extends StatelessWidget {
  final String label;
  final Function onPressed;
  const HeaderNav({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed(),
      child: Text(label, style: TextStyle(color: Colors.white)),
    );
  }
}
