part of '_index.dart';

class HomeData {
  final rxTitle = 'Home'.inj();

  final rxInt = 0.inj();

  final rxUser = Prov.auth.st.rxUser;

  final rxActivePageFb = RM.inject<int>(() => 0);
  final PageController pageCtrlFb = PageController(initialPage: 0);
  final pageCountFb = 2;

  final rxActivePageInj = RM.inject<int>(() => 0);
  final PageController pageCtrlInj = PageController(initialPage: 0);
  final pageCountInj = 3;

  final rxActivePageStorage = RM.inject<int>(() => 0);
  final PageController pageCtrlStorage = PageController(initialPage: 0);
  final pageCountStorage = 3;

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
            // "children": const HomeFirebase(),
          },
          {
            "title": "Firebase Firestore",
            "image_asset": 'assets/images/firebase_logo.png',
            "subtitle": "CRUD on Firestore",
            "nav": Routes.productList,

            // "children": const HomeFirebase(),
          },
          // {
          //   "title": "Firebase",
          //   "image_asset": 'assets/images/firebase_logo.png',
          //   "subtitle": "[disabled on windows or linux]",
          //   "nav": ''

          //   // "children": const HomeFirebase(),
          // },
        ]
      },
      // {
      //   "pg_tools": {
      //     "controller": pageCtrlInj,
      //     "active_page": rxActivePageInj,
      //     "count_page": pageCountInj,
      //   },
      //   "pages": [
      //     {
      //       "title": "Inject",
      //       "image_asset": 'assets/images/firebase_logo.png',
      //       "subtitle": "[disabled on windows or linux]",
      //       // "children": const HomeInject(),
      //     },
      //     {
      //       "title": "Inject",
      //       "image_asset": 'assets/images/firebase_logo.png',
      //       "subtitle": "[disabled on windows or linux]",
      //       // "children": const HomeInject(),
      //     },
      //     {
      //       "title": "Inject",
      //       "image_asset": 'assets/images/firebase_logo.png',
      //       "subtitle": "[disabled on windows or linux]",
      //       // "children": const HomeInject(),
      //     },
      //   ]
      // },
      // {
      //   "pg_tools": {
      //     "controller": pageCtrlStorage,
      //     "active_page": rxActivePageStorage,
      //     "count_page": pageCountStorage,
      //   },
      //   "pages": [
      //     {
      //       "title": "Storage",
      //       "image_asset": 'assets/images/firebase_logo.png',
      //       "subtitle": "[disabled on windows or linux]",
      //       // "children": const HomeStorage(),
      //     },
      //     {
      //       "title": "Storage",
      //       "image_asset": 'assets/images/firebase_logo.png',
      //       "subtitle": "[disabled on windows or linux]",
      //       // "children": const HomeStorage(),
      //     },
      //     {
      //       "title": "Storage",
      //       "image_asset": 'assets/images/firebase_logo.png',
      //       "subtitle": "[disabled on windows or linux]",
      //       // "children": const HomeStorage(),
      //     },
      //   ]
      // }
    ];
  }

  final rxSwitch = false.inj();

  final listOfStatus = List.generate(6, (i) => false.inj());
}
