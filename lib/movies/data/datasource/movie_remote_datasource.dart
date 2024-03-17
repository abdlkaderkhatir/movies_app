import 'package:dio/dio.dart';
import 'package:movies_app/core/error/exception.dart';
import 'package:movies_app/core/network/error_message_model.dart';
import 'package:movies_app/movies/data/model/movie_model.dart';

class MovieRemoteDataSource {
  // final http.Client client;

  // MovieRemoteDataSource({required this.client});

  Future<List<MovieModel>> getNowPlayingMovies() async {

    final response = await Dio().get('https://api.themoviedb.org/3/movie/now_playing?api_key=YOUR_API_KEY');

    if (response.statusCode == 200) {
      final List<dynamic> movies = response.data['results'];
      return movies.map((movie) => MovieModel.fromJson(movie)).toList();
    } 
    else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  // Future<List<MovieModel>> getMovies() async {
  //   final response = await client.get(
  //     Uri.parse('https://api.themoviedb.org/3/movie/popular?api_key=YOUR_API_KEY'),
  //     headers: {
  //       'Content-Type': 'application/json',
  //     },
  //   );

  //   if (response.statusCode == 200) {
  //     final List<dynamic> movies = json.decode(response.body)['results'];
  //     return movies.map((movie) => MovieModel.fromJson(movie)).toList();
  //   } else {
  //     throw ServerException();
  //   }
  // }

}
