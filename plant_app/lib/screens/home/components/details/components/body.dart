import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/details/components/title_and_price.dart';
import 'images_and_icon_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImagesAndIconsCard(size: size),
          TitleAndPrice(
            country: "Rusia",
            price: 440,
            title: "Lukman",
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(20))),
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  color: kPrimaryColor,
                ),
              ),
              Expanded(
                  child:
                      FlatButton(onPressed: null, child: Text("Description"))),
              SizedBox(
                height: kDefaultPadding,
              )
            ],
          )
        ],
      ),
    );
  }
}
