part of '_index.dart';

Future<void> inits() async {
  logx.wtf('inits start');

  final widgetBinding = WidgetsFlutterBinding.ensureInitialized();

  widgetBinding;

  // FlutterNativeSplash.preserve(widgetsBinding: widgetBinding);

  await RM.storageInitializer(fConfig.st.store);

  if (!PlatformType.isWindows && RM.env == Flavor.prod) {
    await Firebase.initializeApp(
      options: FirebaseOptionsProd.currentPlatform,
    );
    Serv.auth.init();
  }

  // x1ConnServ.init();

  setPathUrlStrategy();

  logx.wtf('inits success');
}
