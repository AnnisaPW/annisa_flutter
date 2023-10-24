part of '_index.dart';

// final x1MovieData = RM.inject<MovieData>(() => MovieData(), debugPrintWhenNotifiedPreMessage: '');

class MovieProv {
  final key = 'a603bb398cc5d799ec8d03ff2c95b7f4';

  final lang = 'language=en-US';

  final rxMovieList = RM.inject<List<Movie>>(() => []);
  final rxCastList = RM.inject<List<Cast>>(() => []);

  final rxSelectedId = 0.inj();

  final rxIsEnd = false.inj();

  final rxMovieFuture = RM.injectFuture<DetailsMovie?>(
    () => Future.value(null),
    sideEffects: SideEffects(
      initState: () => _sv.initMovieDetail(),
    ),
  );
  // final rxGetDetail = RM.injectFuture<DetailsMovie?>(
  //   () => Future.value(null),
  //   sideEffects: SideEffects(
  //     initState: () => _sv.initGetDetail(),
  //   ),
  // );

  final rxMoviesLoader = RM.injectFuture<List<Movie>?>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => _sv.initMoviesLoader(),
      onSetState: (snap) {
        snap.onAll(
          onIdle: () => logx.s('from snap rxMoviesLoader: onIdle...'),
          onWaiting: () => logx.s('from snap rxMoviesLoader: onWaiting...'),
          onError: (_, __) => logx.s('from snap rxMoviesLoader: onError...'),
          onData: (data) {
            logx.s('from snap rxLoadMore: onData...');
            final moreMovies = data;
            if (moreMovies != null) {
              _sv.addToList(moreMovies);
            }
          },
        );
      },
    ),
  );
  final rxCastLoader = RM.injectFuture<List<Cast>?>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => _sv.initCastLoader(),
      onSetState: (snap) {
        snap.onAll(
          onIdle: () => logx.s('from snap rxMoviesLoader: onIdle...'),
          onWaiting: () => logx.s('from snap rxMoviesLoader: onWaiting...'),
          onError: (_, __) => logx.s('from snap rxMoviesLoader: onError...'),
          onData: (data) {
            logx.s('from snap rxLoadMore: onData...');
            final moreCast = data;
            if (moreCast != null) {
              _sv.addToListCast(moreCast);
            }
          },
        );
      },
    ),
  );
}
