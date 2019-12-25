import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ThreeHomePage extends Page<ThreeHomeState, Map<String, dynamic>> {
  ThreeHomePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ThreeHomeState>(
                adapter: null,
                slots: <String, Dependent<ThreeHomeState>>{
                }),
            middleware: <Middleware<ThreeHomeState>>[
            ],);

}
