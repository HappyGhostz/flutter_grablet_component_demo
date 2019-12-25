import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:grab_business_two/two_home_page/page.dart';
import 'package:grab_flutter_common/deep_link.dart';
import 'package:grab_flutter_common/grab_let.dart';
import 'package:grab_flutter_common/home_plugin.dart';
import 'package:grab_flutter_common/router/router_settings_name.dart';

class TwoGrabLet extends GrabLet<String> {
  @override
  FlowBuilder getFlowBuilder(String coreKit, DeepLink deepLink) {
    GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>(debugLabel: deepLink.screenType);
    WidgetBuilder result = (_) => TwoFlowWidget();
    return FlowBuilder(navigatorKey: navigatorKey, widgetBuilder: result);
  }

  Set<String> get supportedScreenTypes => const {'TWO'};

  @override
  List<HomePlugin> getHomePlugins(String coreKit) {
    HomeBottomTabPlugin two = HomeBottomTabPlugin(
        tabType: HomeBottomTabType.two,
        bottomNavigationBarItemBuilder: (context) => null,
        pageBuilder: (_) => TwoHomePage().buildPage(null));
    return [two];
  }

  @override
  Map<String, Page<Object, dynamic>> get routes => {RouterSettingNames.TWO_GRAB_LET_MAIN: TwoHomePage()};

  @override
  Widget buildWidget(String path, Map<String, dynamic> params) {
    switch (path) {
      case RouterSettingNames.TWO_GRAB_LET_MAIN:
        return TwoHomePage().buildPage(params);
      default:
        return null;
    }
  }
}

class TwoFlowWidget extends StatelessWidget {
  TwoFlowWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AbstractRoutes routes = PageRoutes(
      pages: <String, Page<Object, dynamic>>{
        'one_home': TwoHomePage(),
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
