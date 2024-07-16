import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articlModel});
  final ArticlModel articlModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: articlModel.image != null
                ? CachedNetworkImage(
                    imageUrl: articlModel.image!,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  )
                : Container(
                    width: double.infinity,
                    height: 250,
                    color: Colors.grey,
                    child: Icon(Icons.image_not_supported, size: 50),
                  )),
        SizedBox(
          height: 12,
        ),
        Text(
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          articlModel.title,
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          maxLines: 2,
          articlModel.subtitle ?? '',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
