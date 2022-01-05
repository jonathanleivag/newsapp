import 'package:flutter/material.dart';
import 'package:newsapp/providers/providers.dart'
    show NavigationProvider, NewResponseProvider;
import 'package:newsapp/views/views.dart' show Tab1View, Tab2View;
import 'package:provider/provider.dart';

class PagesViewWidget extends StatelessWidget {
  const PagesViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NavigationProvider navigationProvider =
        Provider.of<NavigationProvider>(context);
    return PageView(
      physics: const BouncingScrollPhysics(),
      onPageChanged: (value) {
        navigationProvider.page = value;
        final NewResponseProvider newResponseProvider =
            Provider.of<NewResponseProvider>(context, listen: false);
        newResponseProvider
            .setArticleByCategory(newResponseProvider.selectCatagory);
      },
      controller: navigationProvider.pageController,
      children: const [
        Tab1View(),
        Tab2View(),
      ],
    );
  }
}
