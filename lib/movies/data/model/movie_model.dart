import 'package:movies_app/movies/domain/entities/movie.dart';

class MovieModel extends  Movie{

  const MovieModel({
    required super.id, 
    required super.title, 
    required super.backdropPath, 
    required super.genreIds, 
    required super.overview, 
    required super.voteAverage, 
    required super.releaseDate
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'],
      title: json['title'],
      backdropPath: json['backdrop_path'],
      genreIds: List<int>.from(json['genre_ids'].map((x) => x)) ,
      overview: json['overview'],
      voteAverage: json['vote_average'],
      releaseDate: json['release_date']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': super.id,
      'title': super.title,
      'backdrop_path': super.backdropPath,
      'genre_ids': super.genreIds,
      'overview': super.overview,
      'vote_average': super.voteAverage,
      'release_date': super.releaseDate
    };
  }

}
