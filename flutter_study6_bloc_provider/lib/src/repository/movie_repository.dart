import 'dart:convert';

import 'package:flutter_study6_bloc_provider/src/model/movie.dart';
import 'package:http/http.dart' as http;

class MovieRepository {
  Future<List<Movie>> loadMovies() async {
    var queryPram = {'api_key': '2b957f713107cfef4a046f949e6dd1ed'};
    var uri =
        Uri.https("api.themoviedb.org", "/3/movie/popular", queryPram);
    var response = await http.get(uri);

    if (response.body != null) {
      Map<String, dynamic> body = jsonDecode(response.body);
      if (body["results"] != null) {{{}}
        List<dynamic> list = body["results"];
        return list.map<Movie>((item) => Movie.fromJson(item)).toList();
      }
    }
    throw("error"); 
    // added comment by myself 
  } 
}
