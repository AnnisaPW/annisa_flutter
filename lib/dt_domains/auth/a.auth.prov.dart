part of '_index.dart';

class AuthProv {
  final rxUser = RM.injectStream<User?>(
    () => Stream.value(null),
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects.onData(
      (data) {
        logxx.wtf(AuthProv, 'user => $data');
        Serv.auth.responseAuthState(data);
      },
    ),
  );
}
