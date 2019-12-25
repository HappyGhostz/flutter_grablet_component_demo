import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(FourHomeState state, Dispatch dispatch, ViewService viewService) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        'FOUR PAGE',
        style: TextStyle(color: Colors.red),
      ),
      RaisedButton(
          child: Text(
            'GO TO OTHRE PAGE',
            style: TextStyle(color: Colors.blue),
          ),
          onPressed: () {
            dispatch(FourHomeActionCreator.onOtherPage());
          }),
    ],
  );
}
