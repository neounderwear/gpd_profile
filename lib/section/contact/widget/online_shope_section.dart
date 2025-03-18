import 'package:flutter/material.dart';
import 'package:gpd_web/section/contact/widget/build_link.dart';
import 'package:gpd_web/section/contact/widget/contact_header.dart';

class OnlineShopSection extends StatelessWidget {
  const OnlineShopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContactHeader(label: 'Toko Online'),
        SizedBox(height: 8.0),
        BuildLink(
          label: 'Shopee',
          url: 'https://shopee.co.id/gudangunderwear4',
        ),
        BuildLink(
          label: 'Tokopedia',
          url: 'https://www.tokopedia.com/gudangunderwear',
        ),
        BuildLink(
          label: 'TikTok Shop by Tokopedia',
          url: 'https://www.tiktok.com/@gudangpakaiandalam',
        ),
      ],
    );
  }
}
