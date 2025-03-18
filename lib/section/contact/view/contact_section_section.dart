import 'package:flutter/material.dart';
import 'package:gpd_web/section/contact/widget/offline_shop_section.dart';
import 'package:gpd_web/section/contact/widget/online_shope_section.dart';
import 'package:gpd_web/section/contact/widget/social_media_section.dart';
import 'package:gpd_web/section/contact/widget/whats_app_section.dart';

class ContactSection extends StatelessWidget {
  final GlobalKey globalKey;

  const ContactSection({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width < 768;

    return SizedBox(
      key: globalKey,
      width: size.width,
      child: Column(
        children: [
          SizedBox(
            width: size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * (isMobile ? 0.05 : 0.1),
                vertical: size.height * (isMobile ? 0.02 : 0.03),
              ),
              child: Column(
                children: [
                  isMobile ? _buildMobileLayout() : _buildDesktopLayout(),
                  SizedBox(height: isMobile ? 24.0 : 36.0),
                  Divider(),
                  SizedBox(height: 12.0),
                  Text(
                    '2001-2025 Gudang Pakaian Dalam',
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SocialMediaSection(),
        OnlineShopSection(),
        OfflineShopSection(),
        WhatsAppSection(),
      ],
    );
  }

  Widget _buildMobileLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SocialMediaSection(),
            SizedBox(height: 24),
            OnlineShopSection(),
          ],
        ),
        SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OfflineShopSection(),
            SizedBox(height: 24),
            WhatsAppSection(),
          ],
        ),
      ],
    );
  }
}
