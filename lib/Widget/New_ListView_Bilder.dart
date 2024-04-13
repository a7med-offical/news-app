import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:news_app_ui_setup/Services/Get_News.dart';

import 'News_ListView.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key, required this.catagory});
  final String catagory;
  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: NewsService().getNews(Catagory: widget.catagory),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return News_ListView(
              ListArticle: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('OPPOS!! There was an error '),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 260,
                  ),
                  CircularProgressIndicator(
                    color: Colors.orange,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Reload',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            );
          }
        });
  }
}
