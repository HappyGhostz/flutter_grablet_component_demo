import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:grab_business_one/one_home_page/page.dart';
import 'package:grab_flutter_common/deep_link.dart';
import 'package:grab_flutter_common/grab_let.dart';
import 'package:grab_flutter_common/home_plugin.dart';
import 'package:grab_flutter_common/router/router_settings_name.dart';

class OneGrabLet extends GrabLet<String> {
  @override
  FlowBuilder getFlowBuilder(String coreKit, DeepLink deepLink) {
    GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>(debugLabel: deepLink.screenType);
    WidgetBuilder result = (_) => OneFlowWidget();
    return FlowBuilder(navigatorKey: navigatorKey, widgetBuilder: result);
  }

  @override
  Set<String> get supportedScreenTypes => const {'ONE'};

  @override
  List<HomePlugin> getHomePlugins(String coreKit) {
    HomeBottomTabPlugin one = HomeBottomTabPlugin(
        tabType: HomeBottomTabType.one,
        bottomNavigationBarItemBuilder: (context) => null,
        pageBuilder: (_) => OneHomePage().buildPage(null));
    return [one];
  }

  @override
  Map<String, Page<Object, dynamic>> get routes => {RouterSettingNames.ONE_GRAB_LET_MAIN: OneHomePage()};

  @override
  Widget buildWidget(String path, Map<String, dynamic> params) {
    switch (path) {
      case RouterSettingNames.ONE_GRAB_LET_MAIN:
        return OneHomePage().buildPage(params);
      default:
        return null;
    }
  }
}

class OneFlowWidget extends StatelessWidget {
  OneFlowWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AbstractRoutes routes = PageRoutes(
      pages: <String, Page<Object, dynamic>>{
        'one_home': OneHomePage(),
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
