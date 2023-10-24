part of '../_index.dart';

class MovieListRating extends StatelessWidget {
  final Movie movie;
  const MovieListRating({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(Icons.star_outline),
          Text('${movie.voteAverage}'),
        ],
      ),
    );
  }
}
