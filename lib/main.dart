import 'package:flutter/material.dart';

import './kuis.dart';
import './hasil.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _pertanyaans = const [
    {
      'pertanyaan': 'Apa Ibukota Indonesia?',
      'jawabans': [
        {'teks': 'Jakarta', 'skor': 10},
        {'teks': 'Surabaya', 'skor': 0},
        {'teks': 'Madura', 'skor': 0},
        {'teks': 'London', 'skor': 0}
      ]
    },
    {
      'pertanyaan': 'Siapa Presiden pertama Indonesia?',
      'jawabans': [
        {'teks': 'Jokowi', 'skor': 0},
        {'teks': 'Soeharto', 'skor': 0},
        {'teks': 'Kim Jong Un', 'skor': 0},
        {'teks': 'Soekarno', 'skor': 10}
      ]
    },
    {
      'pertanyaan': 'Apa Merk Mie Instan di Indonesia?',
      'jawabans': [
        {'teks': 'Indomaret', 'skor': 0},
        {'teks': 'Superindo', 'skor': 0},
        {'teks': 'Alfamart', 'skor': 0},
        {'teks': 'Indomie', 'skor': 10}
      ]
    },
    {
      'pertanyaan': 'Tahun berapa Indonesia merdeka?',
      'jawabans': [
        {'teks': '2020', 'skor': 0},
        {'teks': '1945', 'skor': 10},
        {'teks': 'Kemarin', 'skor': 0},
        {'teks': 'Benar semua', 'skor': 0}
      ]
    },
    {
      'pertanyaan': 'Apa nama Ibukota Jawa Barat?',
      'jawabans': [
        {'teks': 'Bandung', 'skor': 10},
        {'teks': 'Semarang', 'skor': 0},
        {'teks': 'Surabaya', 'skor': 0},
        {'teks': 'New York', 'skor': 0}
      ]
    }
  ];
  var _totalSkor = 0;
  var _indeksPertanyaan = 0;
  void _resetKuis() {
    setState(() {
      _totalSkor = 0;
      _indeksPertanyaan = 0;  
    });
  }
  void _jawabPertanyaan(int skor) {
    _totalSkor += skor;
    setState(() {
      _indeksPertanyaan = _indeksPertanyaan + 1;
    });
    print(_indeksPertanyaan);
    if (_indeksPertanyaan < _pertanyaans.length) {
      print('Kamu masih punya pertanyaan');
    } else {
      print('Pertanyaan habis');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _indeksPertanyaan < _pertanyaans.length
            ? Kuis(
                pertanyaans: _pertanyaans,
                jawabPertanyaan: _jawabPertanyaan,
                indeksPertanyaan: _indeksPertanyaan)
            : Hasil(_totalSkor, _resetKuis),
      ),
    );
  }
}
