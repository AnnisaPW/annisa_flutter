part of '../_index.dart';

class MovieDetailCastView extends StatelessWidget {
  const MovieDetailCastView({
    Key? key,
  }) : super(key: key);

  // MovieDetailCtrl get ct => x1MovieDetailCtrl;
  // MovieDetailData get _dt => x1MovieDetailData.st;

  @override
  Widget build(BuildContext context) {
    int getLength() => _dt.rxCastList.st.length < 10 ? _dt.rxCastList.st.length : 10;

    return OnBuilder.data(
      listenToMany: [_dt.rxCastList, _dt.rxCastLoader],
      builder: (_) => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var i = 0; i < getLength(); i++)
              Card(
                color: Colors.transparent,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  width: 105,
                  height: 250,
                  child: Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 100 / 150,
                        child: Container(
                          color: Colors.grey.withOpacity(0.2),
                          child: _dt.rxCastList.st[i].profilePath == null
                              ? const Center(child: Text('no image'))
                              : SizedBox(
                                  width: double.infinity,
                                  child: Image.network(
                                    "https://image.tmdb.org/t/p/w92/${_dt.rxCastList.st[i].profilePath}",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      MovieDetailCastName(i: i)
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
