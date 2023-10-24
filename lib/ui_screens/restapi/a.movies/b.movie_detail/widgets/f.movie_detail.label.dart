part of '../_index.dart';

class MovieDetailLabel extends StatelessWidget {
  final DetailsMovie? detail;
  const MovieDetailLabel({
    Key? key,
    required this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const MovieDetailPoster(),
        Container(
          width: 275,
          height: 150,
          margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MovieDetailTitle(detail: detail!),
              const SizedBox(
                height: 10,
              ),
              MovieDetailSubtitle(
                detail: detail!,
              ),
              const SizedBox(height: 10)
              // DetailMovieTagline(detail: detail),
            ],
          ),
        )
      ],
    );
  }
}
