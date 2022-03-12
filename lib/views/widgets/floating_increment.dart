import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_code_girl/redux_counter/action.dart';
import 'package:redux_code_girl/redux_counter/store.dart';

class FloatingIncrement extends StatelessWidget {
  const FloatingIncrement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, VoidCallback>(
      converter: (store) => () {
        store.dispatch(IncrementCounter());
      },
      builder: (context, increment) {
        return ElevatedButton(
          key: const Key('increment'),
          onPressed: increment,
          child: const Icon(Icons.add),
        );
      },
    );
  }
}
