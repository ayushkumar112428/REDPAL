import 'package:flutter/material.dart';
import 'package:myreadpal/appstyle.dart';
import 'package:myreadpal/screens/detail%20book%20library/bookpage.dart';

class bookLayout extends StatelessWidget {
  final Map<String, dynamic> book;
  const bookLayout({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>bookPage(book: book,)));
      },
      child: Container(
        height: 100,
        padding: const EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage("${book['image']}"),
                  )),
            ),
            const SizedBox(width: 5,),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: size.width - 100,
                height: 70,
                padding: const EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                    color: kTextColor1,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 25),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.2),
                      ),
                    ]),
                child: Row(children: <Widget>[
                  RichText(
                    textAlign: TextAlign.left,
                    textScaleFactor: 1.05,
                    text: TextSpan(children: [
                      TextSpan(
                        text: "${book['title']}\n".toUpperCase(),
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black)
                        // style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                          text: "${book['descriptionSort']}".toUpperCase(),
                          style: TextStyle(color: kPrimaryColor1.withOpacity(0.5)))
                    ]),
                  ),
                  const Spacer(),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
