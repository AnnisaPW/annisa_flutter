part of '../_index.dart';

class MovieDetailLoadMore extends StatelessWidget {
  const MovieDetailLoadMore({Key? key}) : super(key: key);

  // MovieDetailCtrl get ct => x1MovieDetailCtrl;
  // MovieDetailData get _dt => x1MovieDetailData.st;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 80,
        child: Center(
          child: OnBuilder<List<Movie>>.all(
            listenToMany: [_dt.rxCastList, _dt.rxCastLoader],
            onWaiting: () => const CircularProgressIndicator(),
            onError: (_, __) => const Text('error'),
            onData: (_) => _dt.rxIsEnd.st
                ? Text(_dt.rxCastList.st.isEmpty ? 'empty' : 'end of list.')
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
