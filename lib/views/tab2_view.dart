import 'package:flutter/material.dart';
import 'package:newsapp/providers/providers.dart';
import 'package:newsapp/themes/themes.dart';
import 'package:newsapp/widgets/widgets.dart'
    show ListCategoryWidget, ListNewsWidget;
import 'package:provider/provider.dart';

class Tab2View extends StatefulWidget {
  const Tab2View({Key? key}) : super(key: key);

  @override
  State<Tab2View> createState() => _Tab2ViewState();
}

class _Tab2ViewState extends State<Tab2View>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    final NewResponseProvider newResponseProvider =
        Provider.of<NewResponseProvider>(context);

    return SafeArea(
      child: Column(
        children: [
          ListCategoryWidget(newResponseProvider: newResponseProvider),
          Expanded(
            child: newResponseProvider.getArticleByCategory.isEmpty
                ? Center(
                    child: CircularProgressIndicator(
                      color: myTheme.colorScheme.secondary,
                    ),
                  )
                : ListNewsWidget(
                    news: newResponseProvider.getArticleByCategory,
                  ),
          )
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
