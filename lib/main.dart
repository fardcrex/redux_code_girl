import 'package:flutter/material.dart';
import 'package:redux_code_girl/app.dart';

import 'redux_counter/reducer.dart';
import 'redux_counter/store.dart';
import 'package:redux/redux.dart';

void main() {
  final store = Store<AppState>(
    appReducer,
    initialState: AppState.initial(),
    middleware: [],
  );
  runApp(MyApp(store: store));
}
