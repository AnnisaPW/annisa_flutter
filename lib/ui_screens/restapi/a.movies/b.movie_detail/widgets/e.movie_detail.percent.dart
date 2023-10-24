// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../_index.dart';

class MovieDetailPercent extends StatelessWidget {
  final DetailsMovie? movie;
  const MovieDetailPercent({
    Key? key,
    required this.movie,
  }) : super(key: key);

  // MovieDetailCtrl get ct => x1MovieDetailCtrl;
  // MovieDetailData get _dt => x1MovieDetailData.st;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 5),
        CircularPercentIndicator(
          radius: 25,
          header: null,
          percent: _dt.rxMovieFuture.st!.voteAverage * 0.1,
          center: Text('${(movie!.voteAverage * 10).round()} %'),
          progressColor: Colors.green,
        ),
      ],
    );
  }
}
