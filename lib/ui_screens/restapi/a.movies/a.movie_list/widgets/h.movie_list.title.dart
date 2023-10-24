part of '../_index.dart';

class MovieListTitle extends StatelessWidget {
  final Movie movie;

  const MovieListTitle({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Text(
                movie.originalTitle == movie.title ? movie.originalTitle : '${movie.originalTitle} (${movie.title})',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                maxLines: 2,
                softWrap: true,
              ),
              Text(
                '${movie.releaseDate}  ',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white.withOpacity(0.6)),
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
              const Divider(
                thickness: 1,
              )
            ],
          ),
        ),
      ],
    );
  }
}
