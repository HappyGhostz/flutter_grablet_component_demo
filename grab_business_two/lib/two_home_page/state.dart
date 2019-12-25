import 'package:fish_redux/fish_redux.dart';

class TwoHomeState implements Cloneable<TwoHomeState> {

  @override
  TwoHomeState clone() {
    return TwoHomeState();
  }
}

TwoHomeState initState(Map<String, dynamic> args) {
  return TwoHomeState();
}
