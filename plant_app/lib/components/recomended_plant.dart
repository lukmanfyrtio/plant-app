import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/components/details/details_screen.dart';

import '../constants.dart';

class RecomendedPlant extends StatelessWidget {
  const RecomendedPlant({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendedPlantCard(
              country: "Bangladesh",
              tittle: "Bunga Malam",
              imaage: "assets/images/image_1.png",
              price: 200,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(),
                    ));
              }),
          RecomendedPlantCard(
            country: "Bangladesh",
            tittle: "Bunga Tidur",
            imaage: "assets/images/image_2.png",
            price: 200,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ));
            },
          ),
          RecomendedPlantCard(
            country: "Bangladesh",
            tittle: "Bunga Desa",
            imaage: "assets/images/image_3.png",
            price: 200,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}

class RecomendedPlantCard extends StatelessWidget {
  const RecomendedPlantCard({
    Key key,
    this.imaage,
    this.tittle,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String imaage, tittle, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(imaage),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: Row(
                children: <Widget>[
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "$tittle\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: "$country".toUpperCase(),
                        style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                  ])),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
