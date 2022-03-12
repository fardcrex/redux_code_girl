import 'package:flutter/material.dart';

import 'views/sumar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Redux Demo',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const SumarPage(title: 'Example sin redux'),
    );
  }
}
