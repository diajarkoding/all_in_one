import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  TextEditingController tinggiC = TextEditingController();
  TextEditingController beratC = TextEditingController();
  double tinggi = 0;
  double berat = 0;
  String hasil = '';

  void hitungBmi(double tinggi, double berat) {
    var hasilFinal = berat / (tinggi * berat / 10000);
    String bmi = hasilFinal.toStringAsFixed(2);
    setState(() {
      hasil = bmi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bmi Calculator'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            controller: tinggiC,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text('Tinggi Badan'),
              hintText: 'Masukan tinggi badan kamu',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: beratC,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text('Berat Badan'),
              hintText: 'Masukan berat badan kamu',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                tinggi = double.parse(tinggiC.value.text);
                berat = double.parse(beratC.value.text);
              });
              hitungBmi(tinggi, berat);
            },
            child: const Text('Hitung'),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(child: Text(hasil))
        ],
      ),
    );
  }
}
