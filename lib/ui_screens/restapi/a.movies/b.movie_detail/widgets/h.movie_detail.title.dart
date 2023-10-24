part of '../_index.dart';

class MovieDetailTitle extends StatelessWidget {
  const MovieDetailTitle({
    Key? key,
    required this.detail,
  }) : super(key: key);

  final DetailsMovie detail;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Text(
          detail.title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
