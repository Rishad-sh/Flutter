import 'package:flutter/material.dart';
import 'package:home/models/catalog.dart';
import 'package:home/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
 class HomeDetails extends StatelessWidget {
   final Item catalog;

  const HomeDetails({Key? key, required this.catalog}) : 
  assert(catalog!=null), super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(),
       backgroundColor:(MyTheme.creamColor),
       bottomNavigationBar: ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: Vx.mH8,
                  children: [
                    Align(alignment:Alignment.topRight),
                    "\u{09F3}${catalog.price}".text.bold.xl.make(),
                    ElevatedButton(onPressed: () {},
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyTheme.darkBluish),
                    shape:MaterialStateProperty.all(StadiumBorder(),),
                    ),

                     child: "Buy".text.make())
                  ],
                ).p32(),
       body: SafeArea(
         bottom: false,
          child: Column(
           children: [
             Hero(
               tag: Key(catalog.id.toString()),
               child: Image.network(catalog.image)).h32(context),
               Expanded(child: VxArc(
                  height: 30.0,
                 arcType: VxArcType.CONVEY,
                 edge: VxEdge.TOP,
                 child: Container(
                   color: Colors.white,
                   width: context.screenWidth,
                   child: Column(
                     children: [
                        catalog.name.text.lg.xl4
                  .color(MyTheme.darkBluish)
                        .bold.make(),
                catalog.desc.text.xl. make(),
                10.heightBox,
                     ],
                   ).py64()
                 ),
               ))
           ],
         ),
       )
       
     );
   }
 }