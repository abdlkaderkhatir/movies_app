
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';

class GetTopRatedMovies {
  final BaseMoviesRepository _moviesRepository;

  GetTopRatedMovies(this._moviesRepository);

  Future<List<Movie>> execute() async {
    return await _moviesRepository.getTopRatedMovies();
  }
  
}
