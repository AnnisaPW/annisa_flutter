part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    // Routes.root: (RouteData data) => const HomeView(),
    //* master -- ----- ----- ----- ----- -----
    Routes.cobaSatu: (RouteData data) => const CobaSatuView(),
    Routes.cobaDua: (RouteData data) => const CobaDuaView(),
    Routes.cobaTiga: (RouteData data) => const CobaTigaView(),
    Routes.fbAuthLogin: (RouteData data) => const FbAuthLoginView(),
    Routes.fbAuthRegist: (RouteData data) => const FbAuthRegistView(),
    Routes.home: (RouteData data) => const HomeView(),
  };
}
