import 'package:fish_redux/fish_redux.dart';

class OneHomeState implements Cloneable<OneHomeState> {

  @override
  OneHomeState clone() {
    return OneHomeState();
  }
}

OneHomeState initState(Map<String, dynamic> args) {
  return OneHomeState();
}
