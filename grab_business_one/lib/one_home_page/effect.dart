import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<OneHomeState> buildEffect() {
  return combineEffects(<Object, Effect<OneHomeState>>{
    OneHomeAction.action: _onAction,
  });
}

void _onAction(Action action, Context<OneHomeState> ctx) {
}
