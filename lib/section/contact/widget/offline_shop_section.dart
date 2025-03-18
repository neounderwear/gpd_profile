import 'package:flutter/material.dart';
import 'package:gpd_web/section/contact/widget/build_link.dart';
import 'package:gpd_web/section/contact/widget/contact_header.dart';

class OfflineShopSection extends StatelessWidget {
  const OfflineShopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContactHeader(label: 'Toko Offline'),
        SizedBox(height: 8.0),
        BuildLink(
          label: 'Jagoan Underwear',
          url:
              'https://api.whatsapp.com/send/?phone=6281317056067&text=Halo+Jagoan+Underwear%2C+saya+mau+tanya+soal+produknya+dong!&type=phone_number&app_absent=0',
        ),
        BuildLink(
          label: 'Regino Store',
          url:
              'https://api.whatsapp.com/send/?phone=6281357365813&text=Halo+Regino+Store%2C+saya+mau+tanya+soal+produknya+dong!&type=phone_number&app_absent=0',
        ),
      ],
    );
  }
}
