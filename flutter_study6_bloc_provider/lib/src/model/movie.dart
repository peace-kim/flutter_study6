class Movie {
  String overview;
  String posterPath;
  String title;
// added 'required' comment to avoid an error
  Movie({required this.overview, required this.posterPath, required this.title});

// changed to the => shape to avoid an error
  factory Movie.fromJson(Map<String, dynamic> json)=> Movie(
      overview: json["overview"] as String,
      posterPath: json["poster_path"] as String,
      title: json["title"] as String,
    );
  
  String get posterUrl => "https://image.tmdb.org/t/p/w500/${this.posterPath}";

}
