// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/Model/Catogory_Item.dart';

import 'Catogory_Card.dart';

class Catagory_ListView extends StatelessWidget {
  const Catagory_ListView({super.key});
  final List<CatogoryItem> item = const [
    CatogoryItem(imageUri: 'assets/general.avif', CatogoryText: 'General'),
    CatogoryItem(
        imageUri: 'assets/technology.jpeg', CatogoryText: 'Technology'),
    CatogoryItem(imageUri: 'assets/sports.avif', CatogoryText: 'Sports'),
    CatogoryItem(imageUri: 'assets/science.avif', CatogoryText: 'Science'),
    CatogoryItem(imageUri: 'assets/health.avif', CatogoryText: 'Health'),
    CatogoryItem(imageUri: 'assets/business.avif', CatogoryText: 'Business'),
    CatogoryItem(
        imageUri: 'assets/entertaiment.avif', CatogoryText: 'Entertaiment'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
          itemCount: item.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return Catagory_Card(
              catogoryItem: item[index],
            );
          })),
    );
  }
}
