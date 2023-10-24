part of '../_index.dart';

class MovieListFab extends StatelessWidget {
  const MovieListFab({Key? key}) : super(key: key);

  // MovieListCtrl get ct => x1MovieListCtrl;
  // MovieListData get _dt => x1MovieListData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {},
    );
  }
}
