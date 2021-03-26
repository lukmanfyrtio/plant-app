import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plant_app/components/recomended_plant.dart';
import 'package:plant_app/components/tittle_with_more_btn.dart';
import 'package:plant_app/constants.dart';
import 'featured_plants.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //it will provide us total height and width of pur screen
    Size size = MediaQuery.of(context).size;
    //its enable scroling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TittleWithMoreBtn(
            title: "Recomended",
            press: () {},
          ),
          RecomendedPlant(),
          TittleWithMoreBtn(
            title: "Featured Plants",
            press: () {},
          ),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
