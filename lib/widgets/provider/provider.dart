import 'package:flutter/material.dart';
import 'package:newsapp/providers/providers.dart'
    show NavigationProvider, NewResponseProvider;
import 'package:provider/provider.dart';

class Provider extends StatelessWidget {
  final Widget child;
  const Provider({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => NavigationProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => NewResponseProvider(),
        ),
      ],
      child: child,
    );
  }
}
