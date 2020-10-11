import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  final Function jawabPertanyaan;
  final String teksJawaban;
  Jawaban(this.jawabPertanyaan, this.teksJawaban);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: RaisedButton(
        child: Text(
          teksJawaban,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: jawabPertanyaan,
        color: Colors.green,
        ),
    );
  }
}