import 'package:flutter/material.dart';
import 'package:myreadpal/screens/library/boday_library.dart';

class LibrayScreens extends StatelessWidget {
  const LibrayScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: const BodyLibrary(),
    );
  }
}