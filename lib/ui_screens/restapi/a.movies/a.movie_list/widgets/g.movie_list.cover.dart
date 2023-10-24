part of '../_index.dart';

class MovieListCover extends StatelessWidget {
  final Movie movie;
  const MovieListCover({
    Key? key,
    required this.movie,
  }) : super(key: key);

  // MovieListCtrl get ct => x1MovieListCtrl;
  // MovieListData get _dt => x1MovieListData.st;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.network("https://image.tmdb.org/t/p/w154/${movie.posterPath}"),
    );
  }
}
