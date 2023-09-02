// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:myreadpal/appstyle.dart';

class BookDetail extends StatefulWidget {
  const BookDetail({Key? key}) : super(key: key);

  @override
  State<BookDetail> createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          RecomendPlantCard(
            image: "assets/image/image1.webp",
            title: "Mahabharat",
            country: "Bharat",
            prees: () {},
            price: 450,
          ),
          RecomendPlantCard(
            image: "assets/image/image2.webp",
            title: "Bhagavat Gita",
            country: "Bharat",
            prees: () {},
            price: 400,
          ),
          RecomendPlantCard(
            image: "assets/image/image3.webp",
            title: "Ramayan",
            country: "Bharat",
            prees: () {},
            price: 300,
          ),
          RecomendPlantCard(
            image: "assets/image/image4.jpeg",
            title: "swamivivekananda",
            country: "Bharat",
            prees: () {},
            price: 350,
          ),
          RecomendPlantCard(
            image: "assets/image/image5.jpeg",
            title: "Leadership Learning From \nChhatrapati Shivaji Maharaj",
            country: "Bharat",
            prees: () {},
            price: 400,
          ),
          RecomendPlantCard(
            image: "assets/image/image1.webp",
            title: "Mahabharat",
            country: "Bharat",
            prees: () {},
            price: 450,
          ),
          RecomendPlantCard(
            image: "assets/image/image2.webp",
            title: "Bhagavat Gita",
            country: "Bharat",
            prees: () {},
            price: 420,
          ),
          RecomendPlantCard(
            image: "assets/image/image3.webp",
            title: "Ramayan",
            country: "Bharat",
            prees: () {},
            price: 300,
          ),
          RecomendPlantCard(
            image: "assets/image/image4.jpeg",
            title: "swamivivekananda",
            country: "Bharat",
            prees: () {},
            price: 350,
          ),
          RecomendPlantCard(
            image: "assets/image/image5.jpeg",
            title: "Leadership Learning From \nChhatrapati Shivaji Maharaj",
            country: "Bharat",
            prees: () {},
            price: 400,
          ),
          RecomendPlantCard(
            image: "assets/image/image1.webp",
            title: "Mahabharat",
            country: "Bharat",
            prees: () {},
            price: 450,
          ),
          RecomendPlantCard(
            image: "assets/image/image2.webp",
            title: "Bhagavat Gita",
            country: "Bharat",
            prees: () {},
            price: 420,
          ),
          RecomendPlantCard(
            image: "assets/image/image3.webp",
            title: "Ramayan",
            country: "Bharat",
            prees: () {},
            price: 300,
          ),
          RecomendPlantCard(
            image: "assets/image/image4.jpeg",
            title: "swamivivekananda",
            country: "Bharat",
            prees: () {},
            price: 350,
          ),
          RecomendPlantCard(
            image: "assets/image/image5.jpeg",
            title: "Leadership Learning From \nChhatrapati Shivaji Maharaj",
            country: "Bharat",
            prees: () { },
            price: 400,
          ),
    
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.prees,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function prees;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
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
                  image: AssetImage(image),
                )),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: size.width-100,
              height: 70,
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: kTextColor1,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10) ,
                      topRight: Radius.circular(10) ,
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
                  text: TextSpan(children: [
                    TextSpan(
                      text: "$title\n".toUpperCase(),
                      style: Theme.of(context).textTheme.button,
                    ),
                    TextSpan(
                        text: "$country".toUpperCase(),
                        style: TextStyle(color: kPrimaryColor1.withOpacity(0.5)))
                  ]),
                ),
                const Spacer(),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
