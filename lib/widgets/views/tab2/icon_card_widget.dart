import 'package:flutter/material.dart';
import 'package:newsapp/models/models.dart' show CategoryModel;
import 'package:newsapp/providers/providers.dart';
import 'package:newsapp/themes/themes.dart' show myTheme;
import 'package:provider/provider.dart';

class IconCardWidget extends StatelessWidget {
  const IconCardWidget({
    Key? key,
    required this.category,
  }) : super(key: key);

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    final NewResponseProvider newResponseProvider =
        Provider.of<NewResponseProvider>(context);
    return GestureDetector(
      onTap: () => newResponseProvider.selectCatagory = category.name,
      child: Container(
        width: 40,
        height: 40,
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Icon(
          category.icon,
          color: newResponseProvider.selectCatagory == category.name
              ? myTheme.colorScheme.secondary
              : Colors.black54,
        ),
      ),
    );
  }
}
