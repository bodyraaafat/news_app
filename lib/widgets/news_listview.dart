import 'package:flutter/material.dart';

import '../models/article_model.dart';
import 'newstile.dart';

class NewsListview extends StatelessWidget {
  const NewsListview({super.key, required this.articles});
  final List<ArticlModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: NewsTile(
          articlModel: articles[index],
        ),
      );
    }));
  }
}
