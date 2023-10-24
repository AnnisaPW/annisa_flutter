part of '../_index.dart';

class MovieListAppbar extends StatelessWidget {
  const MovieListAppbar({Key? key}) : super(key: key);

  // MovieListCtrl get ct => x1MovieListCtrl;
  // MovieListData get _dt => x1MovieListData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
      leading: IconButton(
          onPressed: () {
            nav.back();
          },
          icon: const Icon(Icons.arrow_back_ios)),
    );
  }
}
