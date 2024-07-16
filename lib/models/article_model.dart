class ArticlModel {
  final String? image;
  final String title;
  final String? subtitle;
  ArticlModel(
      {required this.image, required this.title, required this.subtitle});

  factory ArticlModel.fromjson(json) {
    return ArticlModel(
        image: json['urlToImage'],
        title: json['title'],
        subtitle: json['description']);
  }
}
