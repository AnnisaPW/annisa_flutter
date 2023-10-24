part of '../_index.dart';

class MovieListPullText extends StatelessWidget {
  const MovieListPullText({Key? key}) : super(key: key);

  // MovieListCtrl get ct => x1MovieListCtrl;
  // MovieListData get _dt => x1MovieListData.st;

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 25,
      child: Center(
        child: Text(
          'pull to refresh',
          textScaleFactor: 0.8,
        ),
      ),
    );
  }
}
