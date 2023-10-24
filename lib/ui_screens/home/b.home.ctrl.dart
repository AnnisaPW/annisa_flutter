part of '_index.dart';

class HomeCtrl {
  HomeData get dt => Data.home.st;

  init() => logxx.i(HomeCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  signOut() => Serv.auth.signOut();

  delete() => Serv.auth.deleteAccount();

  showConfirmDeleteAccount() {
    nav.toDialog(
      CupertinoAlertDialog(
        title: const Text('Confirmation'),
        content: const Text('Are you sure to delete this account?'),
        actions: [
          TextButton(
            onPressed: () {
              nav.back();
            },
            child: const Text('CANCEL'),
          ),
          TextButton(
            onPressed: () {
              nav.back();
              _ct.delete();
            },
            child: const Text(
              'DELETE',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }

  String title(int index, int index2) {
    // String? title;
    // for (var ind in _dt.items) {
    //   for (var i in ind["pages"]) {
    //     title = i["title"];
    //   }
    // }
    return _dt.items[index]["pages"][index2]["title"];
  }

  String subtitle(int index, int index2) {
    // String? subtitle;
    // for (var ind in _dt.items) {
    //   for (var i in ind["pages"]) {
    //     subtitle = i["subtitle"];
    //   }
    // }
    return _dt.items[index]["pages"][index2]["subtitle"];
  }

  String imageAsset(int index, int index2) {
    // String? image;
    // for (var ind in _dt.items) {
    //   for (var i in ind["pages"]) {
    //     image = i["image_asset"];
    //   }
    // }
    return _dt.items[index]["pages"][index2]["image_asset"];
  }

  Injected<int> rxActivePage(int index) {
    // Injected<int>? rxActivePage;
    // for (var i in _dt.items) {
    //   rxActivePage = i["pg_tools"]["active_page"];
    // }
    return _dt.items[index]["pg_tools"]["active_page"];
  }

  int activePage(int index) {
    // int? activePage;
    // for (var i in _dt.items) {
    //   activePage = i["pg_tools"]["active_page"].state;
    // }
    return _dt.items[index]["pg_tools"]["active_page"].state;
  }

  int countPage(int index) {
    // int? countPage;
    // for (var i in _dt.items) {
    //   countPage = i["pg_tools"]["count_page"];
    // }
    return _dt.items[index]["pg_tools"]["count_page"];
  }

  PageController pageController(int index) {
    // PageController? pageController;
    // for (var i in _dt.items) {
    //   pageController = i["pg_tools"]["controller"];
    // }
    return _dt.items[index]["pg_tools"]["controller"];
  }

  int initialPage(int index) {
    // int? pageViewCtrl;
    // for (var i in _dt.items) {
    //   pageViewCtrl = i["pg_tools"]["controller"].initialPage;
    // }
    return _dt.items[index]["pg_tools"]["controller"].initialPage;
  }

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
