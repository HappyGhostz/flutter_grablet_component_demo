import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(TwoHomeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Test Two page'),
    ),
    body: Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('TWO'),
            RaisedButton(
              child: Text('GO TO ONE PAGE'),
              onPressed: () {
                dispatch(TwoHomeActionCreator.onToOtherPage());
              },
            ),
          ],
        ),
      ),
    ),
  );
}
