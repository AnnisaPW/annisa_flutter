part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    Routes.root: (RouteData data) => const HomeView(),
    //* master -- ----- ----- ----- ----- -----

    Routes.fbAuthLogin: (RouteData data) => const FbAuthLoginView(),
    Routes.fbAuthRegist: (RouteData data) => const FbAuthRegistView(),
    Routes.home: (RouteData data) => const HomeView(),

    //* firebase firestore
    Routes.productList: (RouteData data) => const ProductListView(),
    Routes.productDetail: (RouteData data) => const ProductDetailView(),
    Routes.productInput: (RouteData data) => const ProductInputView(),
    Routes.productEdit: (RouteData data) => const ProductEditView(),

    //* restapi movie
    Routes.movieList: (RouteData data) => const MovieListView(),
    Routes.movieDetail: (RouteData data) => const MovieDetailView(),
  };
}
