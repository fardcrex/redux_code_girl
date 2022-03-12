import 'action.dart';
import 'store.dart';
import 'package:redux/redux.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    counter: counterReducer2(state.counter, action),
    stateAlimentos: state.stateAlimentos,
    stateUser: state.stateUser,
  );
}

/* int counterReducer(int counter, dynamic action) {
  if (action is IncrementCounter) return counter + 1;

  if (action is DecrementCounter) return counter - 1;

  if (action is ResetCounter) return 0;

  return counter;
}
 */
final counterReducer2 = combineReducers<int>([
  TypedReducer<int, IncrementCounter>(_increment),
  TypedReducer<int, DecrementCounter>(_decrement),
  TypedReducer<int, ResetCounter>(_reset),
]);

int _increment(int counter, IncrementCounter action) => counter + 1;

int _decrement(int counter, DecrementCounter action) => counter - 1;

int _reset(int counter, ResetCounter action) => 0;
