import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ThreeHomeAction { action }

class ThreeHomeActionCreator {
  static Action onAction() {
    return const Action(ThreeHomeAction.action);
  }
}
