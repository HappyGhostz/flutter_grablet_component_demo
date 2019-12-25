import 'package:fish_redux/fish_redux.dart';

enum FourHomeAction {
  action,
  onOtherPage,
}

class FourHomeActionCreator {
  static Action onAction() {
    return const Action(FourHomeAction.action);
  }

  static Action onOtherPage() {
    return const Action(FourHomeAction.onOtherPage);
  }
}
