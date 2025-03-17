import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gpd_web/const/section_header.dart';

class ProductWeb extends StatefulWidget {
  final GlobalKey globalKey;

  const ProductWeb({super.key, required this.globalKey});

  @override
  State<ProductWeb> createState() => _ProductWebState();
}

class _ProductWebState extends State<ProductWeb> {
  final List<ProductModel> _products = [];
  int _currentPage = 0;
  final int _pageSize = 12;
  bool _isLoading = false;
  bool _hasMoreData = true;
  final ScrollController _scrollController = ScrollController();
  Timer? _autoScrollTimer;

  @override
  void initState() {
    super.initState();
    _loadMoreProducts().then((_) {
      _startAutoScroll();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _autoScrollTimer?.cancel();
    super.dispose();
  }

  void _startAutoScroll() {
    _autoScrollTimer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_scrollController.hasClients) {
        final currentPosition = _scrollController.offset;
        final maxScrollExtent = _scrollController.position.maxScrollExtent;

        if (currentPosition >= maxScrollExtent) {
          _scrollController.animateTo(
            0,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
          );
        } else {
          _scrollController.animateTo(
            currentPosition + 320,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
          );
        }
      }
    });
  }

  Future<void> _loadMoreProducts() async {
    if (_isLoading) return;

    setState(() {
      _isLoading = true;
    });

    await Future.delayed(const Duration(milliseconds: 800));

    final newProducts = List.generate(
      _pageSize,
      (index) => ProductModel(
        id: _currentPage * _pageSize + index,
        name: 'Celana Dalam Pria Durban 573',
        originalPrice: 150000,
        salePrice: 74900,
        imageUrl: '',
      ),
    );

    setState(() {
      _products.addAll(newProducts);
      _currentPage++;
      _isLoading = false;

      if (_currentPage >= 3) {
        _hasMoreData = false;
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
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.1,
          vertical: size.height * 0.03,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SectionHeader(label: 'Produk'),
            const SizedBox(height: 36.0),
            MouseRegion(
              onEnter: (_) => _autoScrollTimer?.cancel(),
              onExit: (_) => _startAutoScroll(),
              child: SizedBox(
                height: 600.0,
                child:
                    _products.isEmpty
                        ? const Center(child: CircularProgressIndicator())
                        : ListView.builder(
                          controller: _scrollController,
                          scrollDirection: Axis.horizontal,
                          itemCount: _products.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: SizedBox(
                                width: 400.0,
                                child: _buildProductCard(_products[index]),
                              ),
                            );
                          },
                        ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard(ProductModel product) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFCAAC8D), width: 2.0),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  product.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 24.0,
              ),
              child: Container(
                color: Colors.grey.shade300,
                width: double.infinity,
                child:
                    product.imageUrl.isNotEmpty
                        ? Image.network(product.imageUrl, fit: BoxFit.cover)
                        : Container(),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rp.${product.originalPrice.toStringAsFixed(0)}',
                  style: const TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'Rp.${product.salePrice.toStringAsFixed(0)}',
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductModel {
  final int id;
  final String name;
  final double originalPrice;
  final double salePrice;
  final String imageUrl;

  ProductModel({
    required this.id,
    required this.name,
    required this.originalPrice,
    required this.salePrice,
    required this.imageUrl,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      originalPrice: json['original_price'].toDouble(),
      salePrice: json['sale_price'].toDouble(),
      imageUrl: json['image_url'] ?? '',
    );
  }
}
