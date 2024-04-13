// v // ignore_for_file: camel_case_types

// import 'package:flutter/material.dart';
// import 'package:news_app_ui_setup/Services/Get_News.dart';
// import 'package:news_app_ui_setup/Widget/News.dart';

// import '../Model/Service_model.dart';

// class News_ListView extends StatefulWidget {
//   const News_ListView({super.key});

//   @override
//   State<News_ListView> createState() => _News_ListViewState();
// }

// class _News_ListViewState extends State<News_ListView> {
//   List<ServiceModel> ListArticle = [];
//   bool IsLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews;
//   }

//   Future<void> getGeneralNews() async {
//     ListArticle = await NewsService().getNews();
//     IsLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return IsLoading?SliverToBoxAdapter(child: Center(child:CircularProgressIndicator())): SliverList(
//         delegate: SliverChildBuilderDelegate(
//             childCount: ListArticle.length,
//             (context, index) => Padding(
//                   padding:
//                       const EdgeInsets.only(left: 10, right: 10, bottom: 30),
//                   child: News(Services: ListArticle[index]),
//                 )));
//   }
// }
