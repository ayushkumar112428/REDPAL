// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:myreadpal/screens/Home/bookbodypart.dart';

class bodyhome extends StatelessWidget {
  const bodyhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25),
      color: Colors.white12,
      child: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            //const BookDetail(),
            bookBodyPart(),
          ],
        ),
      ),
    );
  }
}
