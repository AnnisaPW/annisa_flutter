part of '_index.dart';

// final x1MovieListData = RM.inject<MovieListData>(
//   () => MovieListData(),
//   debugPrintWhenNotifiedPreMessage: '',
//   sideEffects: SideEffects(initState: () => x1MovieListCtrl.init()),
// );

class MovieListData {
  final rxTitle = 'Movie List'.inj();

  final rxIsEnd = _pv.rxIsEnd;

  final rxSelectedId = _pv.rxSelectedId;

  final rxMovieList = _pv.rxMovieList;

  final rxMovieLoader = _pv.rxMoviesLoader;

  final isLoading = false.inj();
}
