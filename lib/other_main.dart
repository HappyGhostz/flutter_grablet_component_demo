import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grab_business_four/four_grab_let.dart';
import 'package:grab_business_three/three_grab_let.dart';
import 'package:grab_flutter_common/grab_let.dart';
import 'package:grab_flutter_common/router/commen_route.dart';
import 'package:grab_flutter_common/router/router_settings_name.dart';

void main() {
  initGrabLet();
  runApp(OtherApp());
}

///Because flutter prohibits reflection, it is necessary to register all sub-business projects in the common project to the common project for routing processing communication.
///Invisible between components, communication using third-party common
void initGrabLet() {
  CommonGrabLetRoot commonGrabLetRoot = CommonGrabLetRoot.instance;
  Map<String, GrabLet> grabLetRoutes = {};
  grabLetRoutes[GrabLetType.THREE_GRAB_LET] = ThreeGrabLet();
  grabLetRoutes[GrabLetType.FOUR_GRAB_LET] = FourGrabLet();
  commonGrabLetRoot.initRouteRoot(grabLetRoutes);
}

class OtherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyOtherHomePage(),
    );
  }
}

class MyOtherHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Four Page'),
      ),
      body: CommonGrabLetRoot.instance
          .setPageParams(<String, dynamic>{}).buildPage(GrabLetType.FOUR_GRAB_LET, RouterSettingNames.FOUR_GRAB_LET_MAIN),
    );
  }
}
