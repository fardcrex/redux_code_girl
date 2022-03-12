import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:redux/redux.dart';
import 'redux_counter/store.dart';
import 'views/sumar_redux.dart';

class MyApp extends StatelessWidget {
  final Store<AppState> store;
  const MyApp({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Redux Demo',
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: const SumarRedux(),
      ),
    );
  }
}
