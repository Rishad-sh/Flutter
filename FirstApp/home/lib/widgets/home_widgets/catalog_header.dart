import 'package:flutter/material.dart';
import 'package:home/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "Dhontech Manager".text.xl5.bold.color(MyTheme.darkBluish).make(),
          "Dhoner Shomahar".text.xl2.make(),
        ],
      );
  }
}