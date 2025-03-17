import 'package:flutter/material.dart';

class PictureCard extends StatelessWidget {
  final String label;
  final String imageUrl;
  const PictureCard({
    super.key,
    required this.size,
    required this.label,
    required this.imageUrl,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          height: size.height * 0.4,
          width: size.width * 0.5,
          decoration: BoxDecoration(
            color: Colors.brown,
            border: Border.all(width: 6.0, color: Colors.brown),
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Image.network(imageUrl, fit: BoxFit.cover),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            alignment: Alignment.center,
            height: size.height * 0.04,
            width: size.width * 0.08,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(24.0)),
              border: Border.all(color: Colors.brown, width: 3.0),
            ),

            child: Text(
              label,
              style: TextStyle(
                color: Colors.brown,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
