import 'package:flutter/material.dart';
import 'package:gpd_web/navigation/navigation_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gudang Pakaian Dalam',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'Outfit',
      ),
      home: WebPageNavigation(),
    );
  }
}
