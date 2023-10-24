part of '../_index.dart';

class MovieDetailOverview extends StatelessWidget {
  final DetailsMovie? detailMovie;
  const MovieDetailOverview({
    Key? key,
    required this.detailMovie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Overview',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          // const M1SizedBoxH(5),
          const SizedBox(height: 5),
          Opacity(
            opacity: 0.6,
            child: Text(
              detailMovie!.overview,
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
