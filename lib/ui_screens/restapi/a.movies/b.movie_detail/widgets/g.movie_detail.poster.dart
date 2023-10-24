part of '../_index.dart';

class MovieDetailPoster extends StatelessWidget {
  const MovieDetailPoster({Key? key}) : super(key: key);

  // MovieDetailCtrl get ct => x1MovieDetailCtrl;
  // MovieDetailData get _dt => x1MovieDetailData.st;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.grey.withOpacity(0.2),
        ),
      ),
      child: Image.network(
        "https://image.tmdb.org/t/p/w92${_dt.rxMovieFuture.st!.posterPath}",
      ),
    );
  }
}
