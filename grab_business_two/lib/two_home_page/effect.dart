import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:grab_flutter_common/router/router_settings_name.dart';

import 'action.dart';
import 'state.dart';

Effect<TwoHomeState> buildEffect() {
  return combineEffects(<Object, Effect<TwoHomeState>>{
    TwoHomeAction.action: _onAction,
    TwoHomeAction.onToOtherPage: _onToOtherPage,
  });
}

void _onAction(Action action, Context<TwoHomeState> ctx) {}

void _onToOtherPage(Action action, Context<TwoHomeState> ctx) {
  Navigator.pushNamed(ctx.context, RouterSettingNames.ONE_GRAB_LET_MAIN);
}
