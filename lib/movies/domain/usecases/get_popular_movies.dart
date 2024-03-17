

import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';

class GetPopularMoviesUseCase {

  final BaseMoviesRepository _moviesRepository;
  
  GetPopularMoviesUseCase(this._moviesRepository);

  Future<List<Movie>> execute() async {
    return await _moviesRepository.getPopularMovies();
  }
}
