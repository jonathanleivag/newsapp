import 'package:flutter/material.dart';
import 'package:newsapp/widgets/provider/provider.dart';
import 'package:newsapp/widgets/widgets.dart'
    show PagesViewWidget, NavigationWidget, NavbarWidget;

class TabsView extends StatelessWidget {
  const TabsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      child: Scaffold(
        body: Column(
          children: const [
            NavbarWidget(),
            Expanded(
              child: PagesViewWidget(),
            ),
          ],
        ),
        bottomNavigationBar: const NavigationWidget(),
      ),
    );
  }
}
