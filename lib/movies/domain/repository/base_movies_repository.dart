import 'package:movies_app/movies/domain/entities/movie.dart';

abstract class BaseMoviesRepository {

  Future<List<Movie>> getNowPlayingMovies();

  Future<List<Movie>> getPopularMovies();
  
  Future<List<Movie>> getTopRatedMovies();
  // Future<Either<Failure, List<Movie>>> getUpcomingMovies();
  // Future<Either<Failure, List<Movie>>> getSimilarMovies(int movieId);
  // Future<Either<Failure, MovieDetail>> getMovieDetail(int movieId);
  // Future<Either<Failure, List<Movie>>> searchMovies(String query);
}


class Either<L, R> {
  final L? left;
  final R? right;

  Either({this.left, this.right});
}

class Failure {
  final String message;

  Failure(this.message);
}

