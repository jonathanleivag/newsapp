import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier {
  int _page = 0;
  final PageController _pageController = PageController();

  int get page => _page;

  set page(int value) {
    _page = value;

    notifyListeners();
  }

  get pageController => _pageController;

  void changePage(int value) {
    _pageController.animateToPage(
      value,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    );
    notifyListeners();
  }
}
