import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<ThreeHomeState> buildEffect() {
  return combineEffects(<Object, Effect<ThreeHomeState>>{
    ThreeHomeAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ThreeHomeState> ctx) {
}
