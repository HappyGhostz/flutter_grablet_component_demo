import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:grab_business_three/three_home_page/page.dart';
import 'package:grab_flutter_common/deep_link.dart';
import 'package:grab_flutter_common/grab_let.dart';
import 'package:grab_flutter_common/home_plugin.dart';
import 'package:grab_flutter_common/router/router_settings_name.dart';

class ThreeGrabLet extends GrabLet<String> {
  @override
  FlowBuilder getFlowBuilder(String coreKit, DeepLink deepLink) {
    GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>(debugLabel: deepLink.screenType);
    WidgetBuilder result = (_) => ThreeFlowWidget();
    return FlowBuilder(navigatorKey: navigatorKey, widgetBuilder: result);
  }

  Set<String> get supportedScreenTypes => const {'THREE'};

  @override
  List<HomePlugin> getHomePlugins(String coreKit) {
    HomeBottomTabPlugin two = HomeBottomTabPlugin(
        tabType: HomeBottomTabType.two,
        bottomNavigationBarItemBuilder: (context) => null,
        pageBuilder: (_) => ThreeHomePage().buildPage(null));
    return [two];
  }

  @override
  Map<String, Page<Object, dynamic>> get routes => {RouterSettingNames.THREE_GRAB_LET_MAIN: ThreeHomePage()};

  @override
  Widget buildWidget(String path, Map<String, dynamic> params) {
    switch (path) {
      case RouterSettingNames.THREE_GRAB_LET_MAIN:
        return ThreeHomePage().buildPage(params);
      default:
        return null;
    }
  }
}

class ThreeFlowWidget extends StatelessWidget {
  ThreeFlowWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AbstractRoutes routes = PageRoutes(
      pages: <String, Page<Object, dynamic>>{
        'one_home': ThreeHomePage(),
      },
    );

    return Navigator(
        initialRoute: 'one_home',
        onGenerateRoute: (settings) {
          return MaterialPageRoute(builder: (BuildContext context) {
            return routes.buildPage(settings.name, settings.arguments);
          });
        });
  }
}
