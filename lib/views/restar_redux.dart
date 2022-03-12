import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_code_girl/redux_counter/action.dart';

import 'package:redux/redux.dart';
import 'package:redux_code_girl/views/widgets/floating_increment.dart';
import '../redux_counter/store.dart';
import 'restar_page.dart';

class RestarRedux extends StatelessWidget {
  const RestarRedux({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      converter: _ViewModel.fromStore,
      onWillChange: (oldState, newState) {
        if (newState.counter < 0) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: FloatingIncrement(),
            ),
          );
        }
      },
      onInit: (store) {
        if (store.state.counter == 5) {
          store.dispatch(ResetCounter());
        }
      },
      onDispose: (store) {
        if (store.state.counter < 0) {
          store.dispatch(ResetCounter());
        }
      },
      builder: (context, vm) {
        return RestarPage(
          counter: vm.counter,
          decrement: vm.decrement,
          increment: vm.increment,
        );
      },
    );
  }
}

class _ViewModel {
  final int counter;
  final VoidCallback decrement;
  final VoidCallback increment;

  _ViewModel({
    required this.counter,
    required this.decrement,
    required this.increment,
  });

  factory _ViewModel.fromStore(Store<AppState> store) {
    return _ViewModel(
      counter: store.state.counter,
      decrement: () => store.dispatch(DecrementCounter()),
      increment: () => store.dispatch(IncrementCounter()),
    );
  }
}
