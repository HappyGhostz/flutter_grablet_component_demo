import 'package:fish_redux/fish_redux.dart';

enum TwoHomeAction {
  action,
  onToOtherPage,
}

class TwoHomeActionCreator {
  static Action onAction() {
    return const Action(TwoHomeAction.action);
  }

  static Action onToOtherPage() {
    return const Action(TwoHomeAction.onToOtherPage);
  }
}
