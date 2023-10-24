part of '../_index.dart';

class MovieListCards extends StatelessWidget {
  const MovieListCards({Key? key}) : super(key: key);

  // MovieListCtrl get ct => x1MovieListCtrl;
  // MovieListData get _dt => x1MovieListData.st;

  @override
  Widget build(BuildContext context) {
    return Child2(
      child1: const MovieListPullText(),
      child2: const MovieListLoadMore(),
      builder: (child1, child2) {
        return RefreshIndicator(
          onRefresh: () => _ct.refresh(),
          child: OnBuilder.data(
            listenToMany: [_dt.rxMovieList, _dt.rxMovieLoader],
            builder: (_) => SingleChildScrollView(
              child: Wrap(
                // padding: const EdgeInsets.all(2),
                children: [
                  child1,
                  for (var item in _dt.rxMovieList.st)
                    Container(
                      constraints: const BoxConstraints(maxWidth: 500),
                      child: MovieListCard(movie: item),
                    ),
                  child2,
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
