import 'package:flutter/material.dart';

class ReusebalTwoText extends StatelessWidget {
  final String text1;
  final String text2;
  const ReusebalTwoText({Key? key, required this.text1, required this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 120,
                spreadRadius: 0.5,
                color: Colors.white70,
              ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8,),
          Text(text1,
          style: const TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6,),
          Text(text2,
          style: const TextStyle(fontSize: 16,color: Colors.black54,fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 12,),
        ],
      ),
    );
  }
}
