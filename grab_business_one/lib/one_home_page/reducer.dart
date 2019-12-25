import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<OneHomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<OneHomeState>>{
      OneHomeAction.action: _onAction,
    },
  );
}

OneHomeState _onAction(OneHomeState state, Action action) {
  final OneHomeState newState = state.clone();
  return newState;
}
