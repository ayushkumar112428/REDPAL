import 'package:flutter/material.dart';
import 'package:myreadpal/data/bookdata.dart';
import 'package:myreadpal/screens/Home/booklayout.dart';

class bookBodyPart extends StatefulWidget {
  const bookBodyPart({Key? key}) : super(key: key);

  @override
  State<bookBodyPart> createState() => _bookBodyPartState();
}

class _bookBodyPartState extends State<bookBodyPart> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: booklistdata.map((singlebook) => bookLayout(book: singlebook,)).toList(),
      ),
    );
  }
}