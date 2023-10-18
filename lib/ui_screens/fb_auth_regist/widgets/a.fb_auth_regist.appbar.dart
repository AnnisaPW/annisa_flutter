part of '../_index.dart';

class FbAuthRegistAppbar extends StatelessWidget {
  const FbAuthRegistAppbar({Key? key}) : super(key: key);

  FbAuthRegistCtrl get ct => Ctrl.fbAuthRegist;
  FbAuthRegistData get dt => Data.fbAuthRegist.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
