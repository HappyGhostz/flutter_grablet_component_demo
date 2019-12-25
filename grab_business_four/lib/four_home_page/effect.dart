import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:grab_flutter_common/router/commen_route.dart';
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
  Navigator.push(ctx.context, MaterialPageRoute(builder: (context) {
    return CommonGrabLetRoot.instance.buildPage(GrabLetType.THREE_GRAB_LET, RouterSettingNames.THREE_GRAB_LET_MAIN);
  }));
}
