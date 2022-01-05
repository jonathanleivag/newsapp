import 'package:flutter/material.dart';
import 'package:newsapp/models/models.dart' show Article;
import 'package:newsapp/widgets/views/tab1/card_body_widget.dart';
import 'package:newsapp/widgets/views/tab1/card_button_widget.dart';
import 'package:newsapp/widgets/views/tab1/card_image_widget.dart';
import 'package:newsapp/widgets/views/tab1/card_title_widget.dart';
import 'package:newsapp/widgets/views/tab1/card_top_bar_widget.dart';

class NewWidget extends StatelessWidget {
  final Article article;
  final int index;
  const NewWidget({
    Key? key,
    required this.article,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardTopBarWidget(
          article: article,
          index: index,
        ),
        CardTitleWidget(article: article),
        CardImageWidget(article: article),
        CardBodyWidget(article: article),
        const Divider(),
        const CardButtonWidget(),
        const SizedBox(
          height: 10,
        ),
        const Divider(),
      ],
    );
  }
}
