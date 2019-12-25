import 'package:flutter/src/widgets/framework.dart';
import 'package:grab_flutter_common/deep_link.dart';
import 'package:grab_flutter_common/grab_let.dart';

class AppGrabLet extends GrabLet {
  @override
  FlowBuilder getFlowBuilder(coreKit, DeepLink deepLink) {
    // TODO: implement getFlowBuilder
    return null;
  }

  @override
  void handleGrabLetChannel(String startTag, String targetTag, String schema) {}

  @override
  // TODO: implement supportedScreenTypes
  Set<String> get supportedScreenTypes => null;

  @override
  Widget buildWidget(String path, Map<String, dynamic> params) {
    // TODO: implement buildWidget
    return null;
  }
}
