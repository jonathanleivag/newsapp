import 'package:flutter/material.dart';
import 'package:newsapp/providers/providers.dart' show NewResponseProvider;
import 'package:newsapp/widgets/views/tab2/card_widget.dart';

class ListCategoryWidget extends StatelessWidget {
  const ListCategoryWidget({
    Key? key,
    required this.newResponseProvider,
  }) : super(key: key);

  final NewResponseProvider newResponseProvider;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final categories = newResponseProvider.category;
          return CardWidget(category: categories[index]);
        },
        itemCount: newResponseProvider.category.length,
      ),
    );
  }
}
