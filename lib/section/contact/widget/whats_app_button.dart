import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsAppButton extends StatelessWidget {
  const WhatsAppButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(Icons.send_rounded),
      label: Text('WhatsApp'),
      onPressed: () async {
        final Uri uri = Uri.parse(
          'https://api.whatsapp.com/send/?phone=6281210132385&text=Halo+Gudang+Pakaian+Dalam%2Csaya+mau+tanya+soal+produknya+dong!&type=phone_number&app_absent=0',
        );
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        } else {
          throw 'Tidak dapat membuka tautan';
        }
      },
      style: ElevatedButton.styleFrom(
        iconColor: Colors.white,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
    );
  }
}
