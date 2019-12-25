import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'deep_link.dart';
import 'home_plugin.dart';

abstract class GrabLet<Dependency> {
  Set<String> get supportedScreenTypes;

  FlowBuilder getFlowBuilder(Dependency coreKit, DeepLink deepLink);

  List<HomePlugin> getHomePlugins(Dependency coreKit) => [];

  Map<String, Page<Object, dynamic>> get routes => {};

  Widget buildWidget(String path, Map<String, dynamic> params);
}

class FlowBuilder {
  FlowBuilder({@required this.navigatorKey, @required this.widgetBuilder});

  final WidgetBuilder widgetBuilder;
  final GlobalKey<NavigatorState> navigatorKey;
}
