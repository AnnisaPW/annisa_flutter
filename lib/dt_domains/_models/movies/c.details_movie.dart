part of '_index.dart';

class DetailsMovie {
  String backdropPath;
  int id;
  String originalLanguage;
  String originalTitle;
  String overview;
  String posterPath;
  String releaseDate;
  int runtime;
  String tagline;
  String title;
  List<Genre> genres;
  double voteAverage;
  DetailsMovie({
    this.backdropPath = '',
    this.id = 0,
    this.originalLanguage = '',
    this.originalTitle = '',
    this.overview = '',
    this.posterPath = '',
    this.releaseDate = '',
    this.runtime = 0,
    this.tagline = '',
    this.title = '',
    this.genres = const [],
    this.voteAverage = 0.0,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'backdrop_path': backdropPath});
    result.addAll({'id': id});
    result.addAll({'original_language': originalLanguage});
    result.addAll({'original_title': originalTitle});
    result.addAll({'overview': overview});
    result.addAll({'poster_path': posterPath});
    result.addAll({'release_date': releaseDate});
    result.addAll({'runtime': runtime});
    result.addAll({'tagline': tagline});
    result.addAll({'title': title});
    result.addAll({'genres': genres.map((x) => x.toMap()).toList()});
    result.addAll({'vote_average': voteAverage});

    return result;
  }

  factory DetailsMovie.fromMap(Map<String, dynamic> map) {
    return DetailsMovie(
      backdropPath: map['backdrop_path'] ?? '',
      id: map['id']?.toInt() ?? 0,
      originalLanguage: map['original_language'] ?? '',
      originalTitle: map['original_title'] ?? '',
      overview: map['overview'] ?? '',
      posterPath: map['poster_path'] ?? '',
      releaseDate: map['release_date'] ?? '',
      runtime: map['runtime']?.toInt() ?? 0,
      tagline: map['tagline'] ?? '',
      title: map['title'] ?? '',
      genres: List<Genre>.from(map['genres']?.map((x) => Genre.fromMap(x)) ?? const []),
      voteAverage: map['vote_average']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory DetailsMovie.fromJson(String source) => DetailsMovie.fromMap(json.decode(source));

  DetailsMovie copyWith({
    String? backdropPath,
    int? id,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    String? posterPath,
    String? releaseDate,
    int? runtime,
    String? tagline,
    String? title,
    List<Genre>? genres,
    double? voteAverage,
  }) {
    return DetailsMovie(
      backdropPath: backdropPath ?? this.backdropPath,
      id: id ?? this.id,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      posterPath: posterPath ?? this.posterPath,
      releaseDate: releaseDate ?? this.releaseDate,
      runtime: runtime ?? this.runtime,
      tagline: tagline ?? this.tagline,
      title: title ?? this.title,
      genres: genres ?? this.genres,
      voteAverage: voteAverage ?? this.voteAverage,
    );
  }

  @override
  String toString() {
    return 'DetailsMovie(backdropPath: $backdropPath, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, posterPath: $posterPath, releaseDate: $releaseDate, runtime: $runtime, tagline: $tagline, title: $title, genres: $genres, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DetailsMovie &&
        other.backdropPath == backdropPath &&
        other.id == id &&
        other.originalLanguage == originalLanguage &&
        other.originalTitle == originalTitle &&
        other.overview == overview &&
        other.posterPath == posterPath &&
        other.releaseDate == releaseDate &&
        other.runtime == runtime &&
        other.tagline == tagline &&
        other.title == title &&
        // listEquals(other.genres, genres) &&
        other.voteAverage == voteAverage;
  }

  @override
  int get hashCode {
    return backdropPath.hashCode ^
        id.hashCode ^
        originalLanguage.hashCode ^
        originalTitle.hashCode ^
        overview.hashCode ^
        posterPath.hashCode ^
        releaseDate.hashCode ^
        runtime.hashCode ^
        tagline.hashCode ^
        title.hashCode ^
        genres.hashCode ^
        voteAverage.hashCode;
  }
}
