part of '../_index.dart';

class MovieDetailSubtitle extends StatelessWidget {
  final DetailsMovie detail;
  const MovieDetailSubtitle({
    Key? key,
    required this.detail,
  }) : super(key: key);
  String getGenres() {
    var genres = [];
    for (var item in detail.genres) {
      genres.add(item.name);
    }
    return genres.join(', ');
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Opacity(
            opacity: 0.6,
            child: Text(
              getGenres(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Opacity(
            opacity: 0.6,
            child: Text(
              '${detail.releaseDate} | ${detail.runtime} minutes',
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
