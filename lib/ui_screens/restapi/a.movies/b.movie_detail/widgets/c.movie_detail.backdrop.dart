part of '../_index.dart';

class MovieDetailBackDrop extends StatelessWidget {
  const MovieDetailBackDrop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Opacity(
                opacity: 0.3,
                child: Image.network(
                  "https://image.tmdb.org/t/p/w1280${_dt.rxMovieFuture.st!.backdropPath}",
                  fit: BoxFit.fill,
                ),
                // child: Image.network(_dt.rxMovieFuture.st.backdropPath),
              ),

              //* made frame effect
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black,
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
