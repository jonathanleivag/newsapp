import 'package:flutter/material.dart';
import 'package:newsapp/models/models.dart' show CategoryModel;
import 'package:newsapp/widgets/views/tab2/icon_card_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.category,
  }) : super(key: key);

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          IconCardWidget(category: category),
          const SizedBox(height: 5),
          Text(
            category.nameEs,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
