part of '../_index.dart';

class HomeDescription extends StatelessWidget {
  final Movie movie;
  const HomeDescription({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 5, 5, 0),
        width: double.infinity,
        // color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: 150,
              child: Text(
                movie.overview,
                maxLines: 4,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
