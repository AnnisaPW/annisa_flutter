part of '_index.dart';

class MovieListView extends StatelessWidget {
  const MovieListView({Key? key}) : super(key: key);

  // MovieListCtrl get ct => x1MovieListCtrl;
  // MovieListData get dt => x1MovieListData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: MovieListAppbar(),
      ),
      // floatingActionButton: const MovieListFab(),
      body: Child2(
        child1: const MovieListCards(),
        child2: const MovieListLoadMore(),
        builder: (child1, child2) {
          return OnBuilder.data(
            listenTo: _dt.rxMovieList,
            builder: (data) => _dt.rxMovieList.st.isNotEmpty ? child1 : child2,
          );
        },
      ),
    );
  }
}
