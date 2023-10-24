part of '_index.dart';

class AuthProv {
  final rxUser = RM.injectStream<User?>(
    () => Stream.value(null),
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects.onData(
      (data) async {
        logxx.wtf(AuthProv, 'user => $data');
        await Serv.auth.responseAuthState(data);
      },
    ),
  );

  Timer? timer;
}
