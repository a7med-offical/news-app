// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'package:news_app_ui_setup/Widget/News.dart';

import '../Model/Service_model.dart';

class News_ListView extends StatelessWidget {
  

   final List<ServiceModel> ListArticle ;
  News_ListView({super.key,required this.ListArticle});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: ListArticle.length,
            (context, index) => Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 30),
                  child: News(Services: ListArticle[index]),
                )));
  }
}
