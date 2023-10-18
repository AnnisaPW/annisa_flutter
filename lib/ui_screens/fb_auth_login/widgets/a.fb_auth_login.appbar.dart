part of '../_index.dart';

class FbAuthLoginAppbar extends StatelessWidget {
  const FbAuthLoginAppbar({Key? key}) : super(key: key);

  FbAuthLoginCtrl get ct => Ctrl.fbAuthLogin;
  FbAuthLoginData get dt => Data.fbAuthLogin.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
