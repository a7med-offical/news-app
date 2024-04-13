import 'package:flutter/material.dart';
import '../Widget/New_ListView_Bilder.dart';

class CatagoryPages extends StatelessWidget {
  CatagoryPages({super.key, required this.item});
  final String item;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
         Navigator.pop(context);
        }, icon:Icon(Icons.arrow_back,color: Colors.orange,) ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Today\'s',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
              'News',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
          ],
        ),
      ),
        body: CustomScrollView(
          slivers: [ListViewBuilder(catagory: item)],
        ));
  }
}
