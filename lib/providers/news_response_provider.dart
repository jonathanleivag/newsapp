import 'package:flutter/material.dart';
import 'package:newsapp/models/models.dart'
    show Article, NewResponse, CategoryModel;
import 'package:newsapp/utils/utils.dart';
import 'package:http/http.dart' as http;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewResponseProvider extends ChangeNotifier {
  final List<Article> headline = [];
  final String _url = 'newsapi.org';
  final String _apiKey = EnvUtil.apiKey;
  final String _country = EnvUtil.country;
  final List<CategoryModel> category = [];
  final Map<String, List<Article>> categoryArticle = {};
  String _selectCatagory = 'business';

  NewResponseProvider() {
    getTopHeadLines();
    setCategory();
    setCategoryArticle();
  }

  Future getTopHeadLines() async {
    const String unencodedPath = '/v2/top-headlines';
    final Uri url = Uri.https(
      _url,
      unencodedPath,
      {'apiKey': _apiKey, 'country': _country},
    );
    final resp = await http.get(url);
    final news = NewResponse.fromJson(resp.body);
    headline.addAll(news.articles);
    notifyListeners();
  }

  void setCategory() {
    category.addAll([
      CategoryModel(
        icon: FontAwesomeIcons.building,
        name: 'business',
        nameEs: 'Negocio',
      ),
      CategoryModel(
        icon: FontAwesomeIcons.tv,
        name: 'entertainment',
        nameEs: 'Entretenimiento',
      ),
      CategoryModel(
        icon: FontAwesomeIcons.addressCard,
        name: 'general',
        nameEs: 'General',
      ),
      CategoryModel(
        icon: FontAwesomeIcons.headSideVirus,
        name: 'health',
        nameEs: 'Salud',
      ),
      CategoryModel(
        icon: FontAwesomeIcons.vials,
        name: 'science',
        nameEs: 'Ciencias',
      ),
      CategoryModel(
        icon: FontAwesomeIcons.basketballBall,
        name: 'sports',
        nameEs: 'Deportes',
      ),
      CategoryModel(
        icon: FontAwesomeIcons.memory,
        name: 'technology',
        nameEs: 'Tecnología',
      ),
    ]);
  }

  void setCategoryArticle() {
    for (var element in category) {
      categoryArticle[element.name] = [];
    }
  }

  Future<void> setArticleByCategory(String category) async {
    if (categoryArticle[category]!.isEmpty) {
      const String unencodedPath = '/v2/top-headlines';
      final Uri url = Uri.https(
        _url,
        unencodedPath,
        {'apiKey': _apiKey, 'country': _country, 'category': category},
      );
      final resp = await http.get(url);
      final news = NewResponse.fromJson(resp.body);
      categoryArticle[category]!.addAll(news.articles);
      notifyListeners();
    }
  }

  String get selectCatagory => _selectCatagory;

  set selectCatagory(String value) {
    _selectCatagory = value;
    setArticleByCategory(value);
    notifyListeners();
  }

  List<Article> get getArticleByCategory => categoryArticle[_selectCatagory]!;
}
