part of '../_index.dart';

class MovieListLoadMore extends StatelessWidget {
  const MovieListLoadMore({Key? key}) : super(key: key);

  // MovieListCtrl get ct => x1MovieListCtrl;
  // MovieListData get _dt => x1MovieListData.st;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 80,
        child: Center(
          child: OnBuilder<List<Movie>>.all(
            listenToMany: [_dt.rxMovieList, _dt.rxMovieLoader],
            onWaiting: () => const CircularProgressIndicator(),
            onError: (_, __) => const Text('error'),
            onData: (_) => _dt.rxIsEnd.st
                ? Text(_dt.rxMovieList.st.isEmpty ? 'empty' : 'end of list.')
                : OutlinedButton(
                    child: const Text('load more'),
                    onPressed: () => _ct.loadMore(),
                  ),
          ),
        ),
      ),
    );
  }
}
