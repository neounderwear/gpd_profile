import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gpd_web/const/section_header.dart';
import 'package:gpd_web/section/product/data/product.dart';

class ProductSection extends StatefulWidget {
  final GlobalKey globalKey;

  const ProductSection({super.key, required this.globalKey});

  @override
  State<ProductSection> createState() => _ProductSectionState();
}

class _ProductSectionState extends State<ProductSection> {
  final ScrollController _scrollController = ScrollController();
  Timer? _autoScrollTimer;
  List<Product> _products = [];
  double _scrollPosition = 0.0;

  @override
  void initState() {
    super.initState();
    _loadProducts();
    _startContinuousScroll();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _autoScrollTimer?.cancel();
    super.dispose();
  }

  void _loadProducts() {
    setState(() {
      _products = Product.productList;
      // Duplicate products list to create a continuous scroll effect
      _products = [..._products, ..._products];
    });
  }

  void _startContinuousScroll() {
    _autoScrollTimer = Timer.periodic(const Duration(milliseconds: 16), (
      timer,
    ) {
      if (_scrollController.hasClients) {
        final maxScrollExtent = _scrollController.position.maxScrollExtent;

        // Speed of scrolling (adjust as needed)
        const scrollSpeed = 0.5;

        _scrollPosition += scrollSpeed;

        // If we've scrolled halfway through our doubled list, jump back to start
        // This creates a seamless looping effect
        if (_scrollPosition >= maxScrollExtent / 2) {
          _scrollPosition = 0;
        }

        _scrollController.jumpTo(_scrollPosition);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width < 600;

    return Container(
      key: widget.globalKey,
      width: size.width,
      height: size.height * 0.9,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.1,
          vertical: size.height * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SectionHeader(label: 'Produk'),
            SizedBox(height: 36.0),
            Text(
              'Tersedia berbagai macam produk dari berbagai brand terbaik',
              style: TextStyle(fontSize: 24.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 36.0),
            SizedBox(
              height: 400,
              child: MouseRegion(
                onEnter: (_) => _autoScrollTimer?.cancel(),
                onExit: (_) => _startContinuousScroll(),
                child:
                    _products.isEmpty
                        ? const Center(child: CircularProgressIndicator())
                        : ListView.builder(
                          controller: _scrollController,
                          scrollDirection: Axis.horizontal,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: _products.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: SizedBox(
                                // Slightly wider than before
                                width: isMobile ? 250.0 : 380.0,
                                child: _buildProductCard(
                                  _products[index],
                                  isMobile,
                                ),
                              ),
                            );
                          },
                        ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            //SectionHeader(label: 'Lihat Katalog'),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard(Product product, bool isMobile) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFCAAC8D), width: 1.0),
        borderRadius: BorderRadius.circular(4), // Smaller border radius
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            height: 40,
            child: Center(
              child: Text(
                product.name,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: isMobile ? 12.0 : 14.0,
                ),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child:
                  product.imageUrl.isNotEmpty
                      ? Image.asset(product.imageUrl, fit: BoxFit.cover)
                      : Center(
                        child: Icon(
                          Icons.image_not_supported_outlined,
                          size: isMobile ? 36 : 48,
                          color: Colors.grey,
                        ),
                      ),
            ),
          ),

          Container(
            height: 55, // Increased height for price section (was 50)
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  product.formatCurrency(product.originalPrice),
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontSize: isMobile ? 10 : 11, // Slightly larger for desktop
                    color: Colors.grey,
                  ),
                ),
                Text(
                  product.formatCurrency(product.salePrice),
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: isMobile ? 14 : 16, // Slightly larger for desktop
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
