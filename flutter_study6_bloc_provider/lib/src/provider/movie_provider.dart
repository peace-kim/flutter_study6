import 'package:flutter/material.dart';
import 'package:flutter_study6_bloc_provider/src/model/movie.dart';
import 'package:flutter_study6_bloc_provider/src/repository/movie_repository.dart';

class MovieProvider extends ChangeNotifier{
  MovieRepository _movieRepository = MovieRepository();

  List<Movie> _movies = [];
  List<Movie> get movies => _movies;
  
  loadMovies() async {
    List<Movie> listMovies = await _movieRepository.loadMovies();
    // listMovies 예외 처리 
    // 추가적인 가공 절차 
    _movies = listMovies;
    notifyListeners();
    //repository
  }

  
  clearMovies() {
    _movies.clear();
  }

}