part of '../_index.dart';

class MovieDetailAppbar extends StatelessWidget {
  const MovieDetailAppbar({Key? key}) : super(key: key);

  // MovieDetailCtrl get ct => x1MovieDetailCtrl;
  // MovieDetailData get _dt => x1MovieDetailData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
