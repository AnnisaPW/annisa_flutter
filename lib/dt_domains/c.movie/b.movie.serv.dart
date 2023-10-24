part of '_index.dart';

// final x1MovieServ = MovieServ();

class MovieServ {
  init() => logxx.i(MovieServ, '...');

  setSelectedId(int id) {
    _pv.rxSelectedId.refresh();
    _pv.rxSelectedId.setState((s) => id);
  }

  addToList(List<Movie> moreMovies) {
    _pv.rxMovieList.setState((s) => [...s, ...moreMovies]);
    if (moreMovies.isEmpty) {
      _pv.rxIsEnd.setState((s) => true);
    }
  }

  //* triggered on initstate ----- ----- ----- ----- -----

  Future<dynamic> initMoviesLoader() async {
    await _pv.rxIsEnd.refresh();
    await _pv.rxSelectedId.refresh();
    await _pv.rxMovieList.refresh();

    // logx.s(_pv.rxPage.st.toString());
    _pv.rxMoviesLoader.stateAsync = _pv.rxMoviesLoader.setState((s) => handleMoviesLoader());
  }

  Future<dynamic> nextMoviesLoader() async {
    // logx.s(_pv.rxPage.st.toString());
    _pv.rxMoviesLoader.stateAsync = _pv.rxMoviesLoader.setState((s) => handleMoviesLoader());
  }

  Future<dynamic> handleMoviesLoader() async {
    try {
      final initRxLoadMore = await readMoviesLoader();
      _pv.rxMoviesLoader.setToHasData(initRxLoadMore);
    } catch (e) {
      _pv.rxMoviesLoader.setToHasError(e);
      return Fun.handleException(e);
    }
  }

  Future<dynamic> readMoviesLoader() async {
    try {
      final movies = await _rp.readMovies();
      return movies;
    } catch (e) {
      rethrow;
    }
  }

  //* triggered on initstate ----- ----- ----- ----- -----

  initMovieDetail() {
    _pv.rxMovieFuture.stateAsync = handleMovieDetail();
    logx.wtf(_pv.rxMovieFuture.stateAsync.toString());
  }

  Future<DetailsMovie> handleMovieDetail() async {
    try {
      return await readMovieDetail();
      // _pv.rxMovieFuture.setToHasData(movie);
      // logx.i(_pv.rxMovieFuture.st.toString());
    } catch (e) {
      _pv.rxMovieFuture.setToHasError(e);
      return Fun.handleException(e);
    }
  }

  Future<DetailsMovie> readMovieDetail() async {
    try {
      final movie = await _rp.readMovie(_pv.rxSelectedId.st);
      return movie;
    } catch (e) {
      rethrow;
    }
  }

  // * --- --- --- ---

  Future<dynamic> initCast() async {
    await _pv.rxMovieList.refresh();
    _pv.rxMovieFuture.stateAsync = _pv.rxMovieFuture.setState((s) => handleCast());
  }

  Future<dynamic> handleCast() async {
    try {
      final movie = await readCast();
      _pv.rxMovieFuture.setToHasData(movie);
      // logx.i(_pv.rxMovieFuture.st.toString());
    } catch (e) {
      _pv.rxMovieFuture.setToHasError(e);
      return Fun.handleException(e);
    }
  }

  Future<dynamic> readCast() async {
    try {
      final cast = await _rp.readCast();
      return cast;
    } catch (e) {
      rethrow;
    }
  }

  addToListCast(List<Cast> moreCast) {
    _pv.rxCastList.setState((s) => [...s, ...moreCast]);
    if (moreCast.isEmpty) {
      _pv.rxIsEnd.setState((s) => true);
    }
  }

  //* triggered on initstate ----- ----- ----- ----- -----

  Future<dynamic> initCastLoader() async {
    await _pv.rxIsEnd.refresh();
    // await _pv.rxSelectedId.refresh();
    await _pv.rxCastList.refresh();

    // logx.i(_pv.rxCastList.st.toString());
    // logx.i(_pv.rxCastLoader.st.toString());

    // print(_pv.rxCastList.st);
    // print(_pv.rxCastLoader.st);

    // logx.s(_pv.rxPage.st.toString());
    _pv.rxMoviesLoader.stateAsync = _pv.rxMoviesLoader.setState((s) => handleCastLoader());
  }

  Future<dynamic> nextCastLoader() async {
    // logx.s(_pv.rxPage.st.toString());
    _pv.rxCastLoader.stateAsync = _pv.rxCastLoader.setState((s) => handleCastLoader());
  }

  Future<dynamic> handleCastLoader() async {
    try {
      final initRxLoadMore = await readCastLoader();
      _pv.rxCastLoader.setToHasData(initRxLoadMore);
    } catch (e) {
      _pv.rxMoviesLoader.setToHasError(e);
      return Fun.handleException(e);
    }
  }

  Future<dynamic> readCastLoader() async {
    try {
      final movies = await _rp.readCast();
      return movies;
    } catch (e) {
      rethrow;
    }
  }
}
