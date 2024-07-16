import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/widgets/categories_listview.dart';
import 'package:news_app/widgets/news_listview_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "News",
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  "Cloud",
                  style: TextStyle(color: Colors.orange),
                )
              ],
            )),
        body: Padding(
            padding: EdgeInsets.all(14),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: const CategoriesListView(),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 32,
                  ),
                ),
                NewsListViewBuilder(
                  category: "general",
                )
              ],
            )
            //
            //
            // Column(
            //   children: [
            //     const CategoriesListView(),
            //     SizedBox(
            //       height: 32,
            //     ),
            //     Expanded(child: const news_listview())
            //   ],
            // ),
            ));
  }
}