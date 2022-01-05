import 'package:flutter/material.dart';
import 'package:newsapp/themes/themes.dart' show myTheme;
import 'package:newsapp/views/views.dart' show TabsView;
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      home: const TabsView(),
    );
  }
}
