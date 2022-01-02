import 'package:all_in_one/bmi/bmi_calculator.dart';
import 'package:all_in_one/serializable/serializable.dart';
import 'package:flutter/material.dart';
import 'btm/btm_nav.dart';
import 'maping_list/mapping_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: BtmNavbar());
  }
}
