part of '_index.dart';

// final x1MovieDetailCtrl = MovieDetailCtrl();

class MovieDetailCtrl {
  init() {
    logxx.i(MovieDetailCtrl, '...');
    logx.w('ini id movie${_dt.rxMovieFuture.st?.id}');
  }

  action() => _dt.rxInt.setState((s) => s + 1);

  Future<void> refresh() async {
    try {
      await _sv.readMovieDetail();
      // await _sv.readGetDetail();
    } catch (e) {
      Fun.handleException(e);
    }
  }

  Future<void> loadMore() async {
    // dt.isLoading.st = true;
    // await Future.delayed(const Duration(seconds: 2));
    await _sv.nextCastLoader();
    // dt.isLoading.st = false;
  }

  // Future<void> getDetail() async {
  //   final respon = await http.get(
  //     Uri.parse(
  //         'https://api.themoviedb.org/3/movie/${dt.rxMovieFuture.st!.id}?api_key=a603bb398cc5d799ec8d03ff2c95b7f4&language=en-US'),
  //   );
  //   final responAsMap = jsonDecode(respon.body);
  //   dt.detailsMovie = DetailsMovie.fromMap(responAsMap);
  // }
}
