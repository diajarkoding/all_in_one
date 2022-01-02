import 'package:all_in_one/btm/account.dart';
import 'package:all_in_one/btm/bmi.dart';
import 'package:all_in_one/btm/tutorial.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class BtmNavbar extends StatefulWidget {
  const BtmNavbar({Key? key}) : super(key: key);

  @override
  State<BtmNavbar> createState() => _BtmNavbarState();
}

class _BtmNavbarState extends State<BtmNavbar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget navBar() {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
          print(value);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center), label: 'tutorial'),
          BottomNavigationBarItem(icon: Icon(Icons.calculate), label: 'BMI'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
        ],
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return const Home();
        case 1:
          return const Tutorial();
        case 2:
          return const Bmi();
        case 3:
          return const Account();

        default:
          return const Home();
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('App Navgasi'),
          centerTitle: true,
        ),
        body: body(),
        bottomNavigationBar: navBar());
  }
}
