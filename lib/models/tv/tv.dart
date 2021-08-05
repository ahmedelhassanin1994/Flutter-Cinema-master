import 'package:cinema_flt/models/media_credit.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'tv.g.dart';

@HiveType(typeId: 2)
class TV extends Equatable with HiveObject{
  @HiveField(0)
  String backdropPath;
  @HiveField(1)
  List<Cast> createdBy;
  @HiveField(2)
  List<int> episodeRunTime;
  @HiveField(3)
  String firstAirDate;
  @HiveField(4)
  List<Genres> genres;
  @HiveField(5)
  List<int> genreIds;
  @HiveField(6)
  String homepage;
  @HiveField(7)
  int id;
  @HiveField(8)
  bool inProduction;
  @HiveField(9)
  List<String> languages;
  @HiveField(10)
  String lastAirDate;
  @HiveField(11)
  LastEpisodeToAir lastEpisodeToAir;
  @HiveField(12)
  String name;
  @HiveField(13)
  int nextEpisodeToAir;
  @HiveField(14)
  List<Networks> networks;
  @HiveField(15)
  int numberOfEpisodes;
  @HiveField(16)
  int numberOfSeasons;
  @HiveField(17)
  List<String> originCountry;
  @HiveField(18)
  String originalLanguage;
  @HiveField(19)
  String originalName;
  @HiveField(20)
  String overview;
  @HiveField(21)
  double popularity;
  @HiveField(22)
  String posterPath;
  @HiveField(23)
  List<ProductionCompanies> productionCompanies;
  @HiveField(24)
  List<Seasons> seasons;
  @HiveField(25)
  String status;
  @HiveField(26)
  String type;
  @HiveField(27)
  double voteAverage;
  @HiveField(28)
  int voteCount;

  TV(
      {this.backdropPath,
      this.createdBy,
      this.episodeRunTime,
      this.firstAirDate,
      this.genres,
      this.genreIds,
      this.homepage,
      this.id,
      this.inProduction,
      this.languages,
      this.lastAirDate,
      this.lastEpisodeToAir,
      this.name,
      this.nextEpisodeToAir,
      this.networks,
      this.numberOfEpisodes,
      this.numberOfSeasons,
      this.originCountry,
      this.originalLanguage,
      this.originalName,
      this.overview,
      this.popularity,
      this.posterPath,
      this.productionCompanies,
      this.seasons,
      this.status,
      this.type,
      this.voteAverage,
      this.voteCount});

  TV.fromJson(Map<String, dynamic> json) {
    backdropPath = json['backdrop_path'] ?? 'sjdhsjdh';
    if (json['created_by'] != null) {
      createdBy = new List<Cast>();
      json['created_by'].forEach((v) {
        createdBy.add(new Cast.fromJson(v));
      });
    }
    if (json['episode_run_time'] != null) {
      episodeRunTime = json['episode_run_time'].cast<int>();
    }
    firstAirDate = json['first_air_date'];
    if (json['genres'] != null) {
      genres = new List<Genres>();
      json['genres'].forEach((v) {
        genres.add(new Genres.fromJson(v));
      });
    }
    if (json['genre_ids'] != null) {
      genreIds = json['genre_ids'].cast<int>();
    }
    homepage = json['homepage'] ?? '';
    id = json['id'] ?? 0;
    inProduction = json['in_production'] ?? false;
    if (json['languages'] != null) {
      languages = json['languages'].cast<String>();
    }
    lastAirDate = json['last_air_date'] ?? '';
    lastEpisodeToAir = json['last_episode_to_air'] != null
        ? new LastEpisodeToAir.fromJson(json['last_episode_to_air'])
        : null;
    name = json['name'] ?? '';
    if (json['networks'] != null) {
      networks = new List<Networks>();
      json['networks'].forEach((v) {
        networks.add(new Networks.fromJson(v));
      });
    }
    numberOfEpisodes = json['number_of_episodes'] ?? 0;
    numberOfSeasons = json['number_of_seasons'] ?? 0;
    if (json['origin_country'] != null) {
      originCountry = json['origin_country'].cast<String>();
    }
    originalLanguage = json['original_language'] ?? '';
    originalName = json['original_name'] ?? '';
    overview = json['overview'] ?? '';
    if (json['popularity'] != null)
      popularity = json['popularity'].toDouble() ?? 0.0;
    posterPath = json['poster_path'] ?? '';
    if (json['production_companies'] != null) {
      productionCompanies = new List<ProductionCompanies>();
      json['production_companies'].forEach((v) {
        productionCompanies.add(new ProductionCompanies.fromJson(v));
      });
    }
    if (json['seasons'] != null) {
      seasons = new List<Seasons>();
      json['seasons'].forEach((v) {
        seasons.add(new Seasons.fromJson(v));
      });
    }
    status = json['status'] ?? '';
    type = json['type'] ?? '';
    if (json['vote_average'] != null)
      voteAverage = json['vote_average'].toDouble() ?? 0.0;
    voteCount = json['vote_count'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['backdrop_path'] = this.backdropPath;
    if (this.createdBy != null) {
      data['created_by'] = this.createdBy.map((v) => v.toJson()).toList();
    }
    data['episode_run_time'] = this.episodeRunTime;
    data['first_air_date'] = this.firstAirDate;
    if (this.genres != null) {
      data['genres'] = this.genres.map((v) => v.toJson()).toList();
    }
    data['homepage'] = this.homepage;
    data['id'] = this.id;
    data['in_production'] = this.inProduction;
    data['languages'] = this.languages;
    data['last_air_date'] = this.lastAirDate;
    if (this.lastEpisodeToAir != null) {
      data['last_episode_to_air'] = this.lastEpisodeToAir.toJson();
    }
    data['name'] = this.name;
    data['next_episode_to_air'] = this.nextEpisodeToAir;
    if (this.networks != null) {
      data['networks'] = this.networks.map((v) => v.toJson()).toList();
    }
    data['number_of_episodes'] = this.numberOfEpisodes;
    data['number_of_seasons'] = this.numberOfSeasons;
    data['origin_country'] = this.originCountry;
    data['original_language'] = this.originalLanguage;
    data['original_name'] = this.originalName;
    data['overview'] = this.overview;
    data['popularity'] = this.popularity;
    data['poster_path'] = this.posterPath;
    if (this.productionCompanies != null) {
      data['production_companies'] =
          this.productionCompanies.map((v) => v.toJson()).toList();
    }
    if (this.seasons != null) {
      data['seasons'] = this.seasons.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
    data['type'] = this.type;
    data['vote_average'] = this.voteAverage;
    data['vote_count'] = this.voteCount;
    return data;
  }

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class Genres {
  int id;
  String name;

  Genres({this.id, this.name});

  Genres.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    name = json['name'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class LastEpisodeToAir {
  String airDate;
  int episodeNumber;
  int id;
  String name;
  String overview;
  String productionCode;
  int seasonNumber;
  int showId;
  String stillPath;
  double voteAverage;
  int voteCount;

  LastEpisodeToAir(
      {this.airDate,
      this.episodeNumber,
      this.id,
      this.name,
      this.overview,
      this.productionCode,
      this.seasonNumber,
      this.showId,
      this.stillPath,
      this.voteAverage,
      this.voteCount});

  LastEpisodeToAir.fromJson(Map<String, dynamic> json) {
    airDate = json['air_date'] ?? '';
    episodeNumber = json['episode_number'] ?? 0;
    id = json['id'] ?? 0;
    name = json['name'] ?? '';
    overview = json['overview'] ?? '';
    productionCode = json['production_code'] ?? '';
    seasonNumber = json['season_number'] ?? 0;
    showId = json['show_id'] ?? 0;
    stillPath = json['still_path'] ?? '';
    voteAverage = json['vote_average'] ?? 0.0;
    voteCount = json['vote_count'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['air_date'] = this.airDate;
    data['episode_number'] = this.episodeNumber;
    data['id'] = this.id;
    data['name'] = this.name;
    data['overview'] = this.overview;
    data['production_code'] = this.productionCode;
    data['season_number'] = this.seasonNumber;
    data['show_id'] = this.showId;
    data['still_path'] = this.stillPath;
    data['vote_average'] = this.voteAverage;
    data['vote_count'] = this.voteCount;
    return data;
  }
}

class Networks {
  String name;
  int id;
  String logoPath;
  String originCountry;

  Networks({this.name, this.id, this.logoPath, this.originCountry});

  Networks.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? '';
    id = json['id'] ?? 0;
    logoPath = json['logo_path'] ?? '';
    originCountry = json['origin_country'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    data['logo_path'] = this.logoPath;
    data['origin_country'] = this.originCountry;
    return data;
  }
}

class ProductionCompanies {
  int id;
  String logoPath;
  String name;
  String originCountry;

  ProductionCompanies({this.id, this.logoPath, this.name, this.originCountry});

  ProductionCompanies.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? '';
    logoPath = json['logo_path'] ?? '';
    name = json['name'] ?? '';
    originCountry = json['origin_country'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['logo_path'] = this.logoPath;
    data['name'] = this.name;
    data['origin_country'] = this.originCountry;
    return data;
  }
}

class Seasons {
  String airDate;
  int episodeCount;
  int id;
  String name;
  String overview;
  String posterPath;
  int seasonNumber;

  Seasons(
      {this.airDate,
      this.episodeCount,
      this.id,
      this.name,
      this.overview,
      this.posterPath,
      this.seasonNumber});

  Seasons.fromJson(Map<String, dynamic> json) {
    airDate = json['air_date'] ?? '';
    episodeCount = json['episode_count'] ?? 0;
    id = json['id'] ?? 0;
    name = json['name'] ?? '';
    overview = json['overview'] ?? '';
    posterPath = json['poster_path'] ?? '';
    seasonNumber = json['season_number'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['air_date'] = this.airDate;
    data['episode_count'] = this.episodeCount;
    data['id'] = this.id;
    data['name'] = this.name;
    data['overview'] = this.overview;
    data['poster_path'] = this.posterPath;
    data['season_number'] = this.seasonNumber;
    return data;
  }
}
