import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/Model/Service_model.dart';

class News extends StatelessWidget {
  const News({super.key, required this.Services});
  final ServiceModel Services;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: Services.imgUri != null
                        ? NetworkImage(Services.imgUri!)
                        : const NetworkImage(
                            ''))),
          ),
          Text(
            maxLines: 2,
            Services.title!,
            style: const TextStyle(
                fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            maxLines: 2,
            Services.subTitle??'',
            style: const TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
