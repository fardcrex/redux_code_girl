import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../redux_counter/store.dart';
import 'sumar_page.dart';

class SumarRedux extends StatelessWidget {
  const SumarRedux({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, int>(
      converter: (store) => store.state.counter,
      builder: (context, counter) {
        return SumarPage(title: 'Example sin redux', counter: counter);
      },
    );
  }
}
