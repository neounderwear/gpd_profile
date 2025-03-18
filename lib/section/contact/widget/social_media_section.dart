import 'package:flutter/material.dart';
import 'package:gpd_web/section/contact/widget/build_link.dart';
import 'package:gpd_web/section/contact/widget/contact_header.dart';

class SocialMediaSection extends StatelessWidget {
  const SocialMediaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContactHeader(label: 'Media Sosial'),
        SizedBox(height: 8.0),
        BuildLink(
          label: 'TikTok',
          url: 'https://www.tiktok.com/@gudangpakaiandalam',
        ),
        BuildLink(
          label: 'Facebook',
          url:
              'https://www.facebook.com/dodi.rostandi.5?mibextid=LQQJ4d&rdid=InsfPAWejPDktIwy&share_url=https%3A%2F%2Fwww.facebook.com%2Fshare%2F8LRCJp3NNF3d39uE%2F%3Fmibextid%3DLQQJ4d#',
        ),

        BuildLink(
          label: 'Instagram',
          url: 'https://www.instagram.com/gudangpakaiandalam.katalog/',
        ),
      ],
    );
  }
}
