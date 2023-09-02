import 'package:flutter/material.dart';
import 'package:myreadpal/screens/BottomBar/Bottom_bar.dart';
import 'package:myreadpal/screens/Home/body.dart';

class Myhome extends StatelessWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "MyReadPal",
            style: TextStyle(),
          ),
        ),
      ),
      body: const bodyhome(),
      bottomNavigationBar: const BottomNavBarNew(),
      // drawer: Drawer(),
    );
  }
}

