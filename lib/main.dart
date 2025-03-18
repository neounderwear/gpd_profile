import 'package:flutter/material.dart';
import 'package:gpd_web/navigation/navigation_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gudang Pakaian Dalam',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFCAAC8D),
          primary: const Color(0xFFCAAC8D),
          secondary: const Color(0xFF594838),
        ),
        fontFamily: 'Outfit',
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFCAAC8D),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 248, 240, 229),
      ),
      home: NavigationSection(),
    );
  }
}
