import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import  'dart:convert';
import 'package:home/models/catalog.dart';
import 'package:home/widgets/home_widgets/catalog_header.dart';
import 'package:home/widgets/home_widgets/catalog_list.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
final int days= 30;

final String name='Dhontech';
@override
  void initState() {
    super.initState();
    loadData();
  }
 loadData() async {
   await Future.delayed(Duration(seconds: 2));
  final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
  final decodedData = jsonDecode(catalogJson);
  var productsData = decodedData["Products"];
  CatalogModel.item= List.from(productsData).map<Item>((item) =>Item.fromMap(item)).toList();
  setState(() {
    
  });
 }

@override
Widget build(BuildContext context){
  return Scaffold(
  body: SafeArea(
    child: Container(
      padding:Vx.m32,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
        CatalogHeader(),
        if (CatalogModel.item!=null && CatalogModel.item.isNotEmpty)
        CatalogList().expand()
        else
        CircularProgressIndicator().centered().expand(),
        
        ]
      ),
    ),
  ),
        
        );
}
}






