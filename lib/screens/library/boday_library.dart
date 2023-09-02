import 'package:flutter/material.dart';
import 'package:myreadpal/screens/library/librarydetail.dart';

class BodyLibrary extends StatelessWidget {
  const BodyLibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25),
      color: Colors.white10,
      child: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const LibrayDetail(),
          ],
        ),
      ),
    ); 
  }
}