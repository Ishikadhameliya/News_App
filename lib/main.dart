import 'package:flutter/material.dart';
import 'package:news_app/views/screens/details_page.dart';
import 'package:news_app/views/screens/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const homepage(),
        'detailPage': (context) => const newsDetailPage(),
      },
    ),
  );
}
