import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ThreeHomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<ThreeHomeState>>{
      ThreeHomeAction.action: _onAction,
    },
  );
}

ThreeHomeState _onAction(ThreeHomeState state, Action action) {
  final ThreeHomeState newState = state.clone();
  return newState;
}
