import 'package:equatable/equatable.dart';

class Movie  extends Equatable{
  
  final int id;
  final String title;
  final String backdropPath;
  final List<int> genreIds;
  final String overview;
  final double voteAverage;
  final double releaseDate;

  const Movie({
    required this.id,
    required this.title,
    required this.backdropPath,
    required this.genreIds,
    required this.overview,
    required this.voteAverage,
    required this.releaseDate
  });
  
  @override
  List<Object?> get props => [id, title, backdropPath, genreIds, overview, voteAverage, releaseDate];

  // @override
  // bool operator == (Object other) {
  //   return identical(this, other) ||
  //    other is Movie && runtimeType == other.runtimeType
  //    && id == other.id
  //    && title == other.title
  //    && backdropPath == other.backdropPath
  //    && posterPath == other.posterPath
  //    && genreIds == other.genreIds
  //    && overview == other.overview
  //    && voteAverage == other.voteAverage;
  //   // return other is Movie && other.id == id;
  // }

  // // ^ is the bitwise XOR operator

  // @override
  // int get hashCode => 
  //   id.hashCode ^
  //   title.hashCode ^
  //   backdropPath.hashCode ^
  //   posterPath.hashCode ^
  //   genreIds.hashCode ^
  //   overview.hashCode ^
  //   voteAverage.hashCode;

  

}