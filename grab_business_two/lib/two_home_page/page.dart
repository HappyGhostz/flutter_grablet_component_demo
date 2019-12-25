import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class TwoHomePage extends Page<TwoHomeState, Map<String, dynamic>> {
  TwoHomePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<TwoHomeState>(
                adapter: null,
                slots: <String, Dependent<TwoHomeState>>{
                }),
            middleware: <Middleware<TwoHomeState>>[
            ],);

}
