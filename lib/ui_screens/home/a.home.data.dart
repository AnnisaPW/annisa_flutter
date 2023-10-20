part of '_index.dart';

class HomeData {
  final rxTitle = 'Home'.inj();

  final rxInt = 0.inj();

  final rxUser = Prov.auth.st.rxUser;

  // final rxCurrentIndex = 0.inj();
}
