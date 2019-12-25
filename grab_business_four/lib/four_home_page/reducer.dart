import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<FourHomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<FourHomeState>>{
      FourHomeAction.action: _onAction,
    },
  );
}

FourHomeState _onAction(FourHomeState state, Action action) {
  final FourHomeState newState = state.clone();
  return newState;
}
