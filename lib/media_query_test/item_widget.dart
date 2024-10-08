import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String title;
  final double fontsize;

  const ItemWidget({super.key, required this.title, this.fontsize = 20});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(10),
      leading: const Icon(Icons.ac_unit),
      title: Text(
        title,
        style: TextStyle(
          fontSize: fontsize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
