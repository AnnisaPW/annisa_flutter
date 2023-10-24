part of '_index.dart';

class Cast {
  int? gender;
  int? id;
  String? knownForDepartment;
  String? name;
  String? originalName;
  double? popularity;
  String? profilePath;
  int? castId;
  String? character;
  String? creditId;
  int? order;
  Cast({
    this.gender,
    this.id,
    this.knownForDepartment,
    this.name,
    this.originalName,
    this.popularity,
    this.profilePath,
    this.castId,
    this.character,
    this.creditId,
    this.order,
  });

  Map<String, dynamic> toMap() {
    return {
      'gender': gender,
      'id': id,
      'known_for_department': knownForDepartment,
      'name': name,
      'original_name': originalName,
      'popularity': popularity,
      'profile_path': profilePath,
      'cast_id': castId,
      'character': character,
      'credit_id': creditId,
      'order': order,
    };
  }

  factory Cast.fromMap(Map<String, dynamic> map) {
    return Cast(
      gender: map['gender']?.toInt(),
      id: map['id']?.toInt(),
      knownForDepartment: map['known_for_department'],
      name: map['name'],
      originalName: map['original_name'],
      popularity: map['popularity']?.toDouble(),
      profilePath: map['profile_path'],
      castId: map['cast_id']?.toInt(),
      character: map['character'],
      creditId: map['credit_id'],
      order: map['order']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Cast.fromJson(String source) => Cast.fromMap(json.decode(source));
}
