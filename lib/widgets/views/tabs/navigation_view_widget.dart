import 'package:flutter/material.dart';
import 'package:newsapp/providers/providers.dart'
    show NavigationProvider, NewResponseProvider;
import 'package:provider/provider.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NavigationProvider navigationProvider =
        Provider.of<NavigationProvider>(context);

    return BottomNavigationBar(
      currentIndex: navigationProvider.page,
      onTap: (value) {
        navigationProvider.page = value;
        navigationProvider.changePage(value);
        if (value == 1) {
          final NewResponseProvider newResponseProvider =
              Provider.of<NewResponseProvider>(context, listen: false);
          newResponseProvider
              .setArticleByCategory(newResponseProvider.selectCatagory);
        }
      },
      elevation: 0,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Para ti',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.public),
          label: 'Encabezados',
        ),
      ],
    );
  }
}
