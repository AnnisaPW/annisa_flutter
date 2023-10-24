part of '_index.dart';

// final x1MovieListCtrl = MovieListCtrl();

class MovieListCtrl {
  init() => logxx.i(MovieListCtrl, '...');

  Future<void> refresh() async {
    await _sv.initMoviesLoader();
  }

  Future<void> loadMore() async {
    // dt.isLoading.st = true;
    // await Future.delayed(const Duration(seconds: 2));
    await _sv.nextMoviesLoader();
    // dt.isLoading.st = false;
  }

  select(int id) {
    _sv.setSelectedId(id);
    logx.i('selected id: ${_dt.rxSelectedId.st}');
    nav.to(Routes.movieDetail);
  }

  // isLoading() async {
  //   dt.isLoading.st = true;
  //   await Future.delayed(const Duration(seconds: 2));
  //   dt.isLoading.st = false;
  // }
}
