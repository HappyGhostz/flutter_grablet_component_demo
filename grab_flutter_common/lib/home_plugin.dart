import 'package:flutter/material.dart';

typedef HomePageBuilder = WidgetBuilder Function(Map<String, dynamic>);

enum HomePluginType { bottomTab, moreTile }

abstract class HomePlugin {
  HomePlugin(this.type);

  final HomePluginType type;
}

class HomeBottomTabPlugin extends HomePlugin {
  HomeBottomTabPlugin(
      {@required this.tabType, @required this.bottomNavigationBarItemBuilder, @required this.pageBuilder, this.homePageBuilder})
      : super(HomePluginType.bottomTab);

  final HomeBottomTabType tabType; // smaller int means higher priority
  final BottomNavigationBarItemBuilder bottomNavigationBarItemBuilder;
  final WidgetBuilder pageBuilder;

  final HomePageBuilder homePageBuilder;
}

enum HomeBottomTabType {
  one,
  two,
}

typedef BottomNavigationBarItemBuilder = BottomNavigationBarItem Function(BuildContext context);
