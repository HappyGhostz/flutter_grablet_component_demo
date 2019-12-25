import 'package:fish_redux/fish_redux.dart';

enum OneHomeAction {
  action,
  onToOtherPage,
}

class OneHomeActionCreator {
  static Action onAction() {
    return const Action(OneHomeAction.action);
  }

  static Action onToOtherPage() {
    return const Action(OneHomeAction.onToOtherPage);
  }
}
