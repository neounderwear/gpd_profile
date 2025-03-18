import 'package:flutter/material.dart';
import 'package:gpd_web/navigation/widget/header_nav.dart';
import 'package:gpd_web/section/contact/view/contact_section_section.dart';
import 'package:gpd_web/section/testimony/testimony.dart';
import 'package:gpd_web/section/info/view/info_section.dart.dart';
import 'package:gpd_web/section/landing_page/landing_page_section.dart';
import 'package:gpd_web/section/product/view/product_section.dart';

class NavigationSection extends StatefulWidget {
  const NavigationSection({super.key});

  @override
  State<NavigationSection> createState() => _NavigationSectionState();
}

class _NavigationSectionState extends State<NavigationSection> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey section1Key = GlobalKey();
  final GlobalKey section2Key = GlobalKey();
  final GlobalKey section3Key = GlobalKey();
  final GlobalKey section4Key = GlobalKey();
  final GlobalKey section5Key = GlobalKey();
  final GlobalKey section6Key = GlobalKey();

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width < 768;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 240, 229),
      appBar: AppBar(
        backgroundColor: Color(0xFFCAAC8D),
        automaticallyImplyLeading: isMobile,
        leading:
            isMobile
                ? null
                : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/cv.png'),
                  ),
                ),
        foregroundColor: Colors.white,
        title:
            !isMobile
                ? Text('Gudang Pakaian Dalam', style: TextStyle(fontSize: 16))
                : Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/cv.png'),
                      radius: 18,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Gudang Pakaian Dalam',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
        centerTitle: false,
        actions:
            isMobile
                ? []
                : [
                  HeaderNav(
                    onPressed: () => scrollToSection(section1Key),
                    label: 'Beranda',
                  ),
                  SizedBox(width: size.width * 0.01),
                  HeaderNav(
                    onPressed: () => scrollToSection(section2Key),
                    label: 'Tentang Kami',
                  ),
                  SizedBox(width: size.width * 0.01),
                  HeaderNav(
                    onPressed: () => scrollToSection(section3Key),
                    label: 'Produk',
                  ),
                  SizedBox(width: size.width * 0.01),
                  HeaderNav(
                    onPressed: () => scrollToSection(section4Key),
                    label: 'Testimoni',
                  ),
                  SizedBox(width: size.width * 0.01),
                  HeaderNav(
                    onPressed: () => scrollToSection(section5Key),
                    label: 'Kontak',
                  ),
                ],
      ),
      // Drawer untuk navigasi mobile
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFFCAAC8D)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/cv.png'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Gudang Pakaian Dalam',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            _buildDrawerItem(
              title: 'Beranda',
              onTap: () => _navigateAndCloseDrawer(section1Key),
            ),
            _buildDrawerItem(
              title: 'Tentang Kami',
              onTap: () => _navigateAndCloseDrawer(section2Key),
            ),
            _buildDrawerItem(
              title: 'Produk',
              onTap: () => _navigateAndCloseDrawer(section3Key),
            ),
            _buildDrawerItem(
              title: 'Testimoni',
              onTap: () => _navigateAndCloseDrawer(section4Key),
            ),
            _buildDrawerItem(
              title: 'Kontak',
              onTap: () => _navigateAndCloseDrawer(section5Key),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                '© 2001-2025 Gudang Pakaian Dalam',
                style: TextStyle(color: Colors.grey[600], fontSize: 12),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            LandingPageSection(globalKey: section1Key),
            InfoSection(globalKey: section2Key),
            ProductSection(globalKey: section3Key),
            TestimonyWeb(globalKey: section4Key),
            ContactSection(globalKey: section5Key),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem({
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      title: Text(title, style: TextStyle(color: Color(0xFF594838))),
      onTap: onTap,
    );
  }

  void _navigateAndCloseDrawer(GlobalKey key) {
    Navigator.pop(context);

    scrollToSection(key);
  }
}
