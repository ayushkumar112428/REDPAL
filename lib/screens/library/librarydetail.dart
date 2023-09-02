// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:myreadpal/appstyle.dart';

class LibrayDetail extends StatelessWidget {
  const LibrayDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RecomendPlantCard(
          image: "assets/image/images1.jpeg",
          title: "Khuda Bakhsh \nOriental Library",
          country: "Patna",
          prees: () {},
          price: 450,
        ),
        RecomendPlantCard(
          image: "assets/image/images2.jpeg",
          title: "Delhi Public \nLibrary",
          country: "Delhi",
          prees: () {},
          price: 420,
        ),
        RecomendPlantCard(
          image: "assets/image/images3.jpeg",
          title: "Nehru Memorial \nMuseum & Library",
          country: "Delhi",
          prees: () {},
          price: 300,
        ),
        RecomendPlantCard(
          image: "assets/image/images4.jpeg",
          title: "Swami Vivekanand \nLibrary",
          country: "Bhopal",
          prees: () {},
          price: 350,
        ),
        RecomendPlantCard(
          image: "assets/image/images5.jpeg",
          title: "British Library",
          country: "Hyderabad",
          prees: () {},
          price: 400,
        ),
        RecomendPlantCard(
          image: "assets/image/images1.jpeg",
          title: "Khuda Bakhsh \nOriental Library",
          country: "Patna",
          prees: () {},
          price: 450,
        ),
        RecomendPlantCard(
          image: "assets/image/images2.jpeg",
          title: "Delhi Public \nLibrary",
          country: "Delhi",
          prees: () {},
          price: 420,
        ),
        RecomendPlantCard(
          image: "assets/image/images3.jpeg",
          title: "Nehru Memorial \nMuseum & Library",
          country: "Delhi",
          prees: () {},
          price: 300,
        ),
        RecomendPlantCard(
          image: "assets/image/images4.jpeg",
          title: "Swami Vivekanand \nLibrary",
          country: "Bhopal",
          prees: () {},
          price: 350,
        ),
        RecomendPlantCard(
          image: "assets/image/images5.jpeg",
          title: "British Library",
          country: "Hyderabad",
          prees: () {},
          price: 400,
        ),
        RecomendPlantCard(
          image: "assets/image/images1.jpeg",
          title: "Khuda Bakhsh \nOriental Library",
          country: "Patna",
          prees: () {},
          price: 450,
        ),
        RecomendPlantCard(
          image: "assets/image/images2.jpeg",
          title: "Delhi Public \nLibrary",
          country: "Delhi",
          prees: () {},
          price: 420,
        ),
        RecomendPlantCard(
          image: "assets/image/images3.jpeg",
          title: "Nehru Memorial \nMuseum & Library",
          country: "Delhi",
          prees: () {},
          price: 300,
        ),
        RecomendPlantCard(
          image: "assets/image/images4.jpeg",
          title: "Swami Vivekanand \nLibrary",
          country: "Bhopal",
          prees: () {},
          price: 350,
        ),
        RecomendPlantCard(
          image: "assets/image/images5.jpeg",
          title: "British Library",
          country: "Hyderabad",
          prees: () {},
          price: 400,
        ),

      ],
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
      // margin: const EdgeInsets.only(
      //     left: 0,
      //     right: 200,
      //     top: kDefaultPadding / 2,
      //     bottom: kDefaultPadding * 2.5),
      // width: size.width * 0.4,
      child: Row(
        children: <Widget>[
          // Image.asset(image),
          Container(
            height: 200,
            width: size.width/3.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage(image),
                )),
          ),
          //const Spacer(),
          const SizedBox(width: 20,),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: size.width/1.8,
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
                // Text(
                //   "\$$price",
                //   style: Theme.of(context)
                //       .textTheme
                //       .button
                //       ?.copyWith(color: kPrimaryColor),
                // )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
