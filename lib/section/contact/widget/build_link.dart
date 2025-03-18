import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BuildLink extends StatelessWidget {
  final String label;
  final String url;
  const BuildLink({super.key, required this.label, required this.url});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final Uri uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        } else {
          throw 'Tidak dapat membuka tautan';
        }
      },
      child: Text(label, style: TextStyle(fontSize: 14.0)),
    );
  }
}
