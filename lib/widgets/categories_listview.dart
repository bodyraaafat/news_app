import 'package:flutter/material.dart';

import '../models/category.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(image: "assets/images/technology.jpeg", text: "Technology"),
    CategoryModel(image: "assets/images/business.jpg", text: "Business"),
    CategoryModel(
        image: "assets/images/entertaiment.avif", text: "Entertainment"),
    CategoryModel(image: "assets/images/health.avif", text: "Health"),
    CategoryModel(image: "assets/images/sports.jpg", text: "Sports"),
    CategoryModel(image: "assets/images/general.jpg", text: "General"),
    CategoryModel(image: "assets/images/science.jpg", text: "Science"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
