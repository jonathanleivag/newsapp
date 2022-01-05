import 'package:flutter/material.dart';
import 'package:newsapp/models/models.dart' show Article;
import 'package:newsapp/themes/themes.dart' show myTheme;

class CardTopBarWidget extends StatelessWidget {
  final Article article;
  final int index;

  const CardTopBarWidget({
    Key? key,
    required this.article,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Text(
            '${index + 1}. ',
            style: TextStyle(
              color: myTheme.colorScheme.secondary,
            ),
          ),
          Text(article.source.name),
        ],
      ),
    );
  }
}
