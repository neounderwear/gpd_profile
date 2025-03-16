import 'package:flutter/material.dart';
import 'package:gpd_web/navigation/widget/header_nav.dart';
import 'package:gpd_web/section/contact/contact_web.dart';
import 'package:gpd_web/section/handkerchief/handkerchief_web.dart';
import 'package:gpd_web/section/info/info_web.dart';
import 'package:gpd_web/section/landing_page/landing_page_web.dart';
import 'package:gpd_web/section/sock/sock_web.dart';
import 'package:gpd_web/section/underwear/underwear_web.dart';

class WebPageNavigation extends StatefulWidget {
  const WebPageNavigation({super.key});

  @override
  State<WebPageNavigation> createState() => _WebPageNavigationState();
}

class _WebPageNavigationState extends State<WebPageNavigation> {
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

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 240, 229),
      appBar: AppBar(
        backgroundColor: Color(0xFFCAAC8D),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('assets/images/cv.png'),
          ),
        ),
        actions: [
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
            label: 'Underwear',
          ),
          SizedBox(width: size.width * 0.01),
          HeaderNav(
            onPressed: () => scrollToSection(section4Key),
            label: 'Kaos Kaki',
          ),
          SizedBox(width: size.width * 0.01),
          HeaderNav(
            onPressed: () => scrollToSection(section5Key),
            label: 'Saputangan',
          ),
          SizedBox(width: size.width * 0.01),
          HeaderNav(
            onPressed: () => scrollToSection(section6Key),
            label: 'Contact Us',
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            LandingPageWeb(globalKey: section1Key),
            InfoWeb(globalKey: section2Key),
            UnderwearWeb(globalKey: section3Key),
            SockWeb(globalKey: section4Key),
            HandkerchiefWeb(globalKey: section5Key),
            ContactWeb(globalKey: section6Key),
          ],
        ),
      ),
    );
  }
}
