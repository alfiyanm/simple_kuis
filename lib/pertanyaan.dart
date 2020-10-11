import 'package:flutter/material.dart';

class Pertanyaan extends StatelessWidget {
  final String teksPertanyaan;
  Pertanyaan(this.teksPertanyaan);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(28),
      child: Column(
        children: [
          Text(
            teksPertanyaan,
            style: TextStyle(
              fontSize: 20
            ),
          ),
        ],
      ),
    );
  }
}