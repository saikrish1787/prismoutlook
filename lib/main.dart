// import library
import 'package:flutter/material.dart';
import 'package:prismoutlook/pages/alerts_page.dart';
import 'pages/home_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        '/alert': (context) => const alerts_page(),
      },
    );
  }
}
