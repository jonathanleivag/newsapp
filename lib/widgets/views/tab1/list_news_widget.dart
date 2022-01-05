import 'package:flutter/material.dart';
import 'package:newsapp/models/models.dart' show Article;
import 'package:newsapp/widgets/views/tab1/new_widget.dart';

class ListNewsWidget extends StatelessWidget {
  final List<Article> news;
  const ListNewsWidget({
    Key? key,
    required this.news,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: news.length,
      itemBuilder: (BuildContext context, int index) {
        return NewWidget(article: news[index], index: index);
      },
    );
  }
}
