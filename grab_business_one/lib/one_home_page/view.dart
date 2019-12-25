import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(OneHomeState state, Dispatch dispatch, ViewService viewService) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Test One Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Text('ONE PAGE'),
            )
          ],
        ),
      ),
    ),
  );
}
