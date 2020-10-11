import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  final int hasilSkor;
  final Function resetKuis;
  Hasil(this.hasilSkor, this.resetKuis);
  String get hasil {
    String teksHasil;
    if (hasilSkor <= 20) {
      teksHasil = 'Bagus';
    } else if (hasilSkor <= 30) {
      teksHasil = 'Hebat';
    } else if (hasilSkor <= 40) {
      teksHasil = 'Mantap';
    } else {
      teksHasil = 'Sontoloyo';
    }
    return teksHasil;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            hasil,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          child: Text(
            'reset',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          onPressed: resetKuis,
        ),
      ],
    );
  }
}
