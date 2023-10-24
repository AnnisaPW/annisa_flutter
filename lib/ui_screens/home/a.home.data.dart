part of '_index.dart';

class HomeData {
  final rxTitle = 'Home'.inj();

  final rxInt = 0.inj();

  final rxUser = Prov.auth.st.rxUser;

  final rxActivePageFb = RM.inject<int>(() => 0);
  final PageController pageCtrlFb = PageController(initialPage: 0);
  final pageCountFb = 2;

  final rxActivePageRest = RM.inject<int>(() => 0);
  final PageController pageCtrlRest = PageController(initialPage: 0);
  final pageCountRest = 2;

  // final rxActivePageStorage = RM.inject<int>(() => 0);
  // final PageController pageCtrlStorage = PageController(initialPage: 0);
  // final pageCountStorage = 3;

  List<Map<String, dynamic>> get items {
    return [
      {
        "pg_tools": {
          "controller": pageCtrlFb,
          "active_page": rxActivePageFb,
          "count_page": pageCountFb,
        },
        "pages": [
          {
            "title": "Firebase",
            "image_asset": 'assets/images/firebase_logo.png',
            "subtitle": "[disabled on windows or linux]",
            "nav": ''
          },
          {
            "title": "Firebase Firestore",
            "image_asset": 'assets/images/firebase_logo.png',
            "subtitle": "CRUD on Firestore",
            "nav": Routes.productList,
          },
        ]
      },
      {
        "pg_tools": {
          "controller": pageCtrlRest,
          "active_page": rxActivePageRest,
          "count_page": pageCountRest,
        },
        "pages": [
          {
            "title": "RestApi",
            "image_asset": 'assets/images/firebase_logo.png',
            "subtitle": "CRUD on REST API",
            "nav": '',
          },
          {
            "title": "RestApi TMDB",
            "image_asset": 'assets/images/firebase_logo.png',
            "subtitle": "CRUD on TMDB API",
            "nav": Routes.movieList,
          },
        ]
      },
    ];
  }

  final rxSwitch = false.inj();

  final listOfStatus = List.generate(6, (i) => false.inj());
}
