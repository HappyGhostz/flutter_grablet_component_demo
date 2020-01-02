import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:grab_flutter_common/grab_let.dart';

///They are two different implementations [CommonRouteRoot]
/// [CommonGrabLetRoot]

///ARouter (Alibaba's open source Android componentized communication) principle realizes communication
///Store the leaked page in the map memory, and each component communicates according to the key
class CommonRouteRoot {
  CommonRouteRoot._instance();

  static CommonRouteRoot instance = CommonRouteRoot._instance();

  Map<String, Page<Object, dynamic>> _routes;
  PageRoutes _pageRoutes;

  PageRoutes get pageRoutes => _pageRoutes;

  Map<String, Page<Object, dynamic>> get allRoutes => _routes;

  void _registerRoutes(Map<String, Page<Object, dynamic>> grabLetRoutes) {
    if (_routes == null) {
      _routes = {};
    }
    _routes.addAll(grabLetRoutes);
  }

  void _setPageRoutes(Map<String, Page<Object, dynamic>> grabLetRoutes) {
    _pageRoutes = PageRoutes(pages: grabLetRoutes);
  }

  ///this way can been used in the MaterialApp(onGenerateRoute:(){...}) convenient，
  ///and You can use （Navigator.pushNamed(ctx.context, RouterSettingNames.ONE_GRAB_LET_MAIN);） to open other component pages.
  void initRouteRoot(
    Map<String, Page<Object, dynamic>> grabLetRoutes,
  ) {
    _registerRoutes(grabLetRoutes);
    _setPageRoutes(grabLetRoutes);
  }
}

///Each component can register the short-chain Scheme and Host that it can handle, define the format of the transmitted data, and then register it in a unified UIRouter.
///The UIRouter is responsible for distributing routes through the matching relationship between Scheme and Host
class CommonGrabLetRoot {
  CommonGrabLetRoot._instance();

  static CommonGrabLetRoot instance = CommonGrabLetRoot._instance();

  Map<String, GrabLet> _grabLets;

  Map<String, GrabLet> get grabLets => _grabLets;
  Map<String, dynamic> _params = <String, dynamic>{};

  void initRouteRoot(
    Map<String, GrabLet> grabLetRoutes,
  ) {
    _grabLets = grabLetRoutes;
  }

  CommonGrabLetRoot setPageParams(Map<String, dynamic> params) {
    if (params != null) {
      _params = params;
    }
    return instance;
  }

  ///This way is to return the widget directly, then Navigator.push(ctx.context, MaterialPageRoute(builder: (context) {
  ///    return CommonGrabLetRoot.instance.buildPage(GrabLetType.THREE_GRAB_LET, RouterSettingNames.THREE_GRAB_LET_MAIN);
  ///  })); like this
  Widget buildPage(String grabLetType, String path) {
    var grabLet = _grabLets[grabLetType];
    var widget = grabLet.buildWidget(path, _params);
    return widget;
  }
}
