import 'package:flutter/material.dart';

class DeepLink {
  DeepLink({@required this.screenType, this.fullLink, this.parameters});

  final String screenType;
  final String fullLink;
  final Map<String, dynamic> parameters;
}
