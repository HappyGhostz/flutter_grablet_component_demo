import 'dart:core';

import 'package:flutter/material.dart';

import 'commen_route.dart';

class RouteUtils {
  static pushName(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  static pushPath(BuildContext context, String type, String path, {Map<String, dynamic> params}) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return CommonGrabLetRoot.instance.setPageParams(params).buildPage(type, path);
    }));
  }
}
