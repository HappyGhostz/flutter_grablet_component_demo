import 'package:fish_redux/fish_redux.dart';
import 'package:grab_flutter_common/router/route_utils.dart';
import 'package:grab_flutter_common/router/router_settings_name.dart';

import 'action.dart';
import 'state.dart';

Effect<FourHomeState> buildEffect() {
  return combineEffects(<Object, Effect<FourHomeState>>{
    FourHomeAction.action: _onAction,
    FourHomeAction.onOtherPage: _onOtherPage,
  });
}

void _onAction(Action action, Context<FourHomeState> ctx) {}

void _onOtherPage(Action action, Context<FourHomeState> ctx) {
  RouteUtils.pushPath(ctx.context, GrabLetType.THREE_GRAB_LET, RouterSettingNames.THREE_GRAB_LET_MAIN);
}
