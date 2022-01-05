import 'package:flutter/material.dart';
import 'package:newsapp/providers/providers.dart' show NewResponseProvider;
import 'package:newsapp/themes/themes.dart' show myTheme;
import 'package:newsapp/widgets/widgets.dart';
import 'package:provider/provider.dart';

class Tab1View extends StatefulWidget {
  const Tab1View({Key? key}) : super(key: key);

  @override
  State<Tab1View> createState() => _Tab1ViewState();
}

class _Tab1ViewState extends State<Tab1View>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    final NewResponseProvider newResponseProvider =
        Provider.of<NewResponseProvider>(context);

    return newResponseProvider.headline.isEmpty
        ? Center(
            child: CircularProgressIndicator(
              color: myTheme.colorScheme.secondary,
            ),
          )
        : ListNewsWidget(news: newResponseProvider.headline);
  }

  @override
  bool get wantKeepAlive => true;
}
