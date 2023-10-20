part of '_index.dart';

class HomeCtrl {
  HomeData get dt => Data.home.st;

  init() => logxx.i(HomeCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  signOut() => Serv.auth.signOut();

  delete() => Serv.auth.deleteAccount();

  Widget getUsername() {
    Widget widget = const Text('Anonymous');
    var user = dt.rxUser.st;
    if (user != null) {
      if (user.isAnonymous) {
        const Text('Anonymous');
      } else {
        widget = Text('${dt.rxUser.st?.displayName}');
      }
    }
    return widget;
  }
}
