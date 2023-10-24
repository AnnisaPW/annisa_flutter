part of '_index.dart';

class Movie {
  int id;
  String originalTitle;
  String title;
  double voteAverage;
  String releaseDate;
  String overview;
  String posterPath;
  String backdropPath;
  bool video;
  Movie({
    this.id = 0,
    this.originalTitle = '',
    this.title = '',
    this.voteAverage = 0.0,
    this.releaseDate = '',
    this.overview = '',
    this.posterPath = '',
    this.backdropPath = '',
    this.video = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'original_title': originalTitle,
      'title': title,
      'vote_average': voteAverage,
      'release_date': releaseDate,
      'overview': overview,
      'poster_path': posterPath,
      'backdrop_path': backdropPath,
      'video': video,
    };
  }

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      id: map['id']?.toInt() ?? 0,
      originalTitle: map['original_title'] ?? '',
      title: map['title'] ?? '',
      voteAverage: map['vote_average']?.toDouble() ?? 0.0,
      releaseDate: map['release_date'] ?? '',
      overview: map['overview'] ?? '',
      posterPath: map['poster_path'] ?? '',
      backdropPath: map['backdrop_path'] ?? '',
      video: map['video'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Movie.fromJson(String source) => Movie.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Movie(originalTitle: $originalTitle, title: $title, voteAverage: $voteAverage, releaseDate: $releaseDate, overview: $overview, posterPath: $posterPath, backdropPath: $backdropPath, video: $video)';
  }
}
