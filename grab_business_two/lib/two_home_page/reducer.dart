import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<TwoHomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<TwoHomeState>>{
      TwoHomeAction.action: _onAction,
    },
  );
}

TwoHomeState _onAction(TwoHomeState state, Action action) {
  final TwoHomeState newState = state.clone();
  return newState;
}
