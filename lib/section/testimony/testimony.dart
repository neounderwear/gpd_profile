import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gpd_web/const/section_header.dart';

class TestimonyWeb extends StatefulWidget {
  final GlobalKey globalKey;

  const TestimonyWeb({super.key, required this.globalKey});

  @override
  State<TestimonyWeb> createState() => _TestimonyWebState();
}

class _TestimonyWebState extends State<TestimonyWeb> {
  final PageController _pageController = PageController(initialPage: 0);
  Timer? _autoScrollTimer;
  int _currentPage = 0;

  final List<String> _testimonyImages = [
    'assets/images/testimony/1.png',
    'assets/images/testimony/2.png',
    'assets/images/testimony/3.png',
    'assets/images/testimony/4.png',
    'assets/images/testimony/5.png',
    'assets/images/testimony/6.png',
    'assets/images/testimony/7.png',
    'assets/images/testimony/8.png',
    'assets/images/testimony/9.png',
    'assets/images/testimony/10.png',
  ];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _autoScrollTimer?.cancel();
    super.dispose();
  }

  void _startAutoScroll() {
    _autoScrollTimer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_testimonyImages.isEmpty) return;

      _currentPage = (_currentPage + 1) % _testimonyImages.length;

      if (_pageController.hasClients) {
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      key: widget.globalKey,
      width: size.width,
      height: size.height,
      constraints: BoxConstraints(minHeight: 400, maxHeight: size.height * 0.8),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 231, 225, 217),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.1,
          vertical: size.height * 0.03,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SectionHeader(label: 'Testimoni'),
            const SizedBox(height: 36.0),

            SizedBox(
              height: size.height * 0.6,
              child: PageView.builder(
                controller: _pageController,
                itemCount: _testimonyImages.length,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Center(
                      child: _buildImage(_testimonyImages[index], size),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(String imageUrl, Size size) {
    double imageWidth = size.width < 600 ? size.width * 1 : size.width * 1;

    return Container(
      constraints: BoxConstraints(
        maxWidth: imageWidth,
        maxHeight: imageWidth * 5,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        child: Image.asset(
          imageUrl,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: Colors.grey.shade200,
              child: const Center(
                child: Icon(Icons.broken_image, size: 48, color: Colors.grey),
              ),
            );
          },
        ),
      ),
    );
  }
}
