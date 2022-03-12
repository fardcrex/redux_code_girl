class AppState {
  final int counter;

  final StateAlimentos stateAlimentos;

  final StateUser stateUser;

  const AppState({required this.stateAlimentos, required this.stateUser, required this.counter});

  factory AppState.initial() => AppState(stateAlimentos: StateAlimentos(), stateUser: StateUser(), counter: 0);
}

class StateAlimentos {}

class StateUser {}
