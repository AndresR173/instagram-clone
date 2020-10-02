import 'package:flutter/material.dart';

import 'pages/navigation_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fakestagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF212121),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NavigationPage(),
    );
  }
}
