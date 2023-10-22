part of '_index.dart';

class HomeCtrl {
  HomeData get dt => Data.home.st;

  init() => logxx.i(HomeCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  signOut() => Serv.auth.signOut();

  delete() => Serv.auth.deleteAccount();

  double getQueryW(BuildContext context) {
    double width;
    width = MediaQuery.of(context).size.width;
    return width;
  }

  void nextPage(int indexItem) {
    _dt.items[indexItem]["pg_tools"]["controller"]
        .nextPage(duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
  }

  void previousPage(int indexItem) {
    _dt.items[indexItem]["pg_tools"]["controller"]
        .previousPage(duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
  }

  double getQueryH(BuildContext context) {
    double height;
    height = MediaQuery.of(context).size.height;
    return height;
  }

  togglePanel(int index) {
    if (!_dt.listOfStatus[index].st) {
      for (var element in _dt.listOfStatus) {
        element.refresh();
      }
    }
    _dt.listOfStatus[index].toggle();
  }

  Widget getUsername() {
    Widget widget = const Text(
      'Anonymous',
      textAlign: TextAlign.center,
    );
    var user = dt.rxUser.st;
    if (user != null) {
      if (user.isAnonymous) {
        const Text(
          'Anonymous',
          textAlign: TextAlign.center,
        );
      } else {
        widget = Text('${dt.rxUser.st?.displayName}', textAlign: TextAlign.center);
      }
    }
    return widget;
  }
}
