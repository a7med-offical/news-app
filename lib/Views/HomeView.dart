import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/Widget/Catagory_ListView.dart';

import '../Widget/New_ListView_Bilder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
          ],
        ),
      ),
      body:const  CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Catagory_ListView(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
           ListViewBuilder(catagory: 'general',)
        ],
      ),
    );
  }
}

