// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/Model/Catogory_Item.dart';
import '../Views/CatagoryPages.dart';

class Catagory_Card extends StatelessWidget {
  const Catagory_Card({super.key, required this.catogoryItem});
  final CatogoryItem catogoryItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return  CatagoryPages(item: catogoryItem.CatogoryText);
        }));
      },
      child: Container(
        margin: const EdgeInsets.only(left: 5, right: 5),
        height: 90,
        width: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(catogoryItem.imageUri)),
            borderRadius: BorderRadius.circular(10),
            color: Colors.amber),
        child: Center(
            child: Text(
          catogoryItem.CatogoryText,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        )),
      ),
    );
  }
}
