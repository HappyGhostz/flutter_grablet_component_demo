import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class FourHomePage extends Page<FourHomeState, Map<String, dynamic>> {
  FourHomePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<FourHomeState>(
                adapter: null,
                slots: <String, Dependent<FourHomeState>>{
                }),
            middleware: <Middleware<FourHomeState>>[
            ],);

}
