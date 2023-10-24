part of '../_index.dart';

class MovieListCard extends StatelessWidget {
  final Movie movie;
  // final int index;
  const MovieListCard({
    Key? key,
    required this.movie,
    // required this.index,
  }) : super(key: key);

  // MovieListCtrl get ct => x1MovieListCtrl;
  // MovieListData get _dt => x1MovieListData.st;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(3, 0, 5, 2),
      child: InkWell(
        child: Card(
          color: Colors.transparent,
          child: SizedBox(
            width: double.infinity,
            height: 200,
            child: Row(
              children: [
                MovieListCover(
                  movie: movie,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: double.infinity,
                                  child: MovieListTitle(
                                    movie: movie,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      MovieListRating(movie: movie),
                      HomeDescription(movie: movie),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        onTap: () {
          _ct.select(movie.id);
        },
      ),
    );
  }
}
