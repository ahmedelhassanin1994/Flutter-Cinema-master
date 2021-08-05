import 'dart:convert';

// import 'package:cinema_flt/db/movie_db.dart';
import 'package:cinema_flt/models/movie/movie.dart';

import '../dates.dart';

class MoviesResult {
  List<Movie> results;
  int page;
  int totalResults;
  Dates dates;
  int totalPages;

  MoviesResult(
      {this.results,
      this.page,
      this.totalResults,
      this.dates,
      this.totalPages});

  MoviesResult.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = new List<Movie>();
      json['results'].forEach((v) {
        results.add(Movie.fromJson(v));
      });
    }
    page = json['page'];
    totalResults = json['total_results'];
    dates = json['dates'] != null ? new Dates.fromJson(json['dates']) : null;
    totalPages = json['total_pages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    data['page'] = this.page;
    data['total_results'] = this.totalResults;
    if (this.dates != null) {
      data['dates'] = this.dates.toJson();
    }
    data['total_pages'] = this.totalPages;
    return data;
  }

  // static List<Movie> fromDb(List<MovieEntry> data) {
  //   List<Movie> dataMovie = [];

  //   data.forEach((mv) {
  //     Movie movie = Movie(
  //         popularity: mv.popularity,
  //         voteCount: mv.voteCount,
  //         video: mv.video,
  //         posterPath: mv.posterPath,
  //         id: mv.idMovie,
  //         adult: mv.adult,
  //         backdropPath: mv.backdropPath,
  //         originalLanguage: mv.originalLanguage,
  //         originalTitle: mv.originalTitle,
  //         genreIds:
  //             mv.genreIds.isEmpty ? [] : jsonDecode(mv.genreIds).cast<int>(),
  //         title: mv.title,
  //         voteAverage: mv.voteAverage,
  //         overview: mv.overview,
  //         releaseDate: mv.releaseDate);
  //     dataMovie.add(movie);
  //   });

  //   return dataMovie;
  // }
}
