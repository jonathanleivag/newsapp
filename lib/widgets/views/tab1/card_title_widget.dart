import 'package:flutter/material.dart';
import 'package:newsapp/models/models.dart' show Article;

class CardTitleWidget extends StatelessWidget {
  final Article article;

  const CardTitleWidget({
    Key? key,
    required this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        article.title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
