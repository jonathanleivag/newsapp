import 'package:flutter/material.dart';
import 'package:newsapp/models/models.dart' show Article;

class CardBodyWidget extends StatelessWidget {
  final Article article;

  const CardBodyWidget({
    Key? key,
    required this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 10,
        left: 10,
        bottom: 10,
      ),
      child: Text(
        article.description != null ? article.description! : '',
      ),
    );
  }
}
