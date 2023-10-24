part of '../_index.dart';

class MovieDetailCastName extends StatelessWidget {
  const MovieDetailCastName({
    Key? key,
    required this.i,
  }) : super(key: key);

  final int i;

  // MovieDetailCtrl get ct => x1MovieDetailCtrl;
  // MovieDetailData get _dt => x1MovieDetailData.st;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${_dt.rxCastList.st[i].originalName}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Opacity(
            opacity: 0.6,
            child: Text(
              '${_dt.rxCastList.st[i].character}',
            ),
          )
        ],
      ),
    );
  }
}
