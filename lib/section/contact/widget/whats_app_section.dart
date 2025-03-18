import 'package:flutter/material.dart';
import 'package:gpd_web/section/contact/widget/contact_header.dart';
import 'package:gpd_web/section/contact/widget/whats_app_button.dart';

class WhatsAppSection extends StatelessWidget {
  const WhatsAppSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContactHeader(label: 'Hubungi Kami'),
        SizedBox(height: 8.0),
        Text(
          'Klik tombol di bawah untuk\nchat melalui WhatsApp',
          style: TextStyle(fontSize: 14.0),
        ),
        SizedBox(height: 12.0),
        WhatsAppButton(),
      ],
    );
  }
}
