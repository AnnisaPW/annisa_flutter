part of '_index.dart';

final nav = RM.injectNavigator(
  initialLocation: Prov.auth.st.rxUser.st == null ? Routes.fbAuthLogin : Routes.home,
  routes: RouteMap.data,
  onNavigate: (data) => OnNavigate.action(data),
  onNavigateBack: (data) => OnNavigateBack.action(data),
  shouldUseCupertinoPage: true,
  builder: (routerOutlet) => flavorBanner(
    show: kDebugMode,
    child: routerOutlet,
    message: fConfig.st.name,
  ),
  navigatorObservers: [],
);
