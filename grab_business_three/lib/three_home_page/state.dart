import 'package:fish_redux/fish_redux.dart';

class ThreeHomeState implements Cloneable<ThreeHomeState> {

  @override
  ThreeHomeState clone() {
    return ThreeHomeState();
  }
}

ThreeHomeState initState(Map<String, dynamic> args) {
  return ThreeHomeState();
}
