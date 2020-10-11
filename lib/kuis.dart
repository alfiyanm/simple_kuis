import 'package:flutter/material.dart';

import './pertanyaan.dart';
import './jawaban.dart';

class Kuis extends StatelessWidget {
  final List<Map<String, Object>> pertanyaans;
  final int indeksPertanyaan;
  final Function jawabPertanyaan;
  Kuis({
    @required this.pertanyaans,
    @required this.jawabPertanyaan,
    @required this.indeksPertanyaan,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Pertanyaan(
            pertanyaans[indeksPertanyaan]['pertanyaan'],
          ),
          ...(pertanyaans[indeksPertanyaan]['jawabans'] as List<Map<String, Object>>)
              .map((jawaban) {
            return Jawaban(() => jawabPertanyaan(jawaban['skor']), jawaban['teks']);
          }).toList()
        ],
      ),
    );
  }
}
