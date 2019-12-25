import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(ThreeHomeState state, Dispatch dispatch, ViewService viewService) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Three Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'This is Three Page!',
            style: TextStyle(color: Colors.red),
          )
        ],
      ),
    ),
  );
}
