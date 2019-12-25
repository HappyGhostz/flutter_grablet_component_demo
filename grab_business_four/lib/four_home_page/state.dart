import 'package:fish_redux/fish_redux.dart';

class FourHomeState implements Cloneable<FourHomeState> {

  @override
  FourHomeState clone() {
    return FourHomeState();
  }
}

FourHomeState initState(Map<String, dynamic> args) {
  return FourHomeState();
}
