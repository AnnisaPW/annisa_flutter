part of '_index.dart';

// final x1MovieDetailData = RM.inject<MovieDetailData>(
//   () => MovieDetailData(),
//   debugPrintWhenNotifiedPreMessage: '',
//   sideEffects: SideEffects(initState: () => x1MovieDetailCtrl.init()),
// );

class MovieDetailData {
  final rxTitle = 'MovieDetail'.inj();

  final rxInt = 0.inj();

  final rxIsEnd = _pv.rxIsEnd;

  final rxMovieFuture = _pv.rxMovieFuture;

  final rxCastList = _pv.rxCastList;
  final rxCastLoader = _pv.rxCastLoader;
}
