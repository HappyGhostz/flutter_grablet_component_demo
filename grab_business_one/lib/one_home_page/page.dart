import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class OneHomePage extends Page<OneHomeState, Map<String, dynamic>> {
  OneHomePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<OneHomeState>(
                adapter: null,
                slots: <String, Dependent<OneHomeState>>{
                }),
            middleware: <Middleware<OneHomeState>>[
            ],);

}
