import 'package:intl/intl.dart';

class Product {
  final int id;
  final String name;
  final double originalPrice;
  final double salePrice;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.originalPrice,
    required this.salePrice,
    required this.imageUrl,
  });

  static List<Product> productList = [
    Product(
      id: 1,
      name: 'Celana Dalam Pria DURBAN 594',
      originalPrice: 151000,
      salePrice: 75000,
      imageUrl: 'assets/images/product/1.jpg',
    ),
    Product(
      id: 2,
      name: 'Celana Dalam Pria LGS 848',
      originalPrice: 143000,
      salePrice: 112000,
      imageUrl: 'assets/images/product/2.jpg',
    ),
    Product(
      id: 3,
      name: 'Celana Boxer Santai RECTI KAMAS RK10',
      originalPrice: 35000,
      salePrice: 28000,
      imageUrl: 'assets/images/product/3.jpg',
    ),
    Product(
      id: 4,
      name: 'Kaos Kaki Sekolah GTMAN BTS',
      originalPrice: 30000,
      salePrice: 24000,
      imageUrl: 'assets/images/product/4.jpg',
    ),
    Product(
      id: 5,
      name: 'Kaos Singlet Pria Big Size RIDER 224BSP',
      originalPrice: 112000,
      salePrice: 50000,
      imageUrl: 'assets/images/product/5.jpg',
    ),
    Product(
      id: 6,
      name: 'Celana Boxer Santai KINGSMAN',
      originalPrice: 60000,
      salePrice: 40000,
      imageUrl: 'assets/images/product/6.jpg',
    ),
    Product(
      id: 7,
      name: 'Kaos Polo Country Fiesta',
      originalPrice: 159000,
      salePrice: 127200,
      imageUrl: 'assets/images/product/7.jpg',
    ),
    Product(
      id: 8,
      name: 'Sapu Tangan RECTI KAMAS BASIC',
      originalPrice: 75000,
      salePrice: 50000,
      imageUrl: 'assets/images/product/8.jpg',
    ),
    Product(
      id: 9,
      name: 'Bra Wanita ELENA 8965',
      originalPrice: 70000,
      salePrice: 55000,
      imageUrl: 'assets/images/product/9.jpg',
    ),
    Product(
      id: 10,
      name: 'Camisol Wanita SOREX 3366',
      originalPrice: 40000,
      salePrice: 32000,
      imageUrl: 'assets/images/product/10.jpg',
    ),
  ];

  String formatCurrency(double amount) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(amount);
  }

  // Method untuk menampilkan harga sebagai string
  String getPriceDisplay() {
    return "${formatCurrency(originalPrice)} → ${formatCurrency(salePrice)}";
  }
}
