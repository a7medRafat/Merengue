class LeaguesModel {
  List<ResponseModel>? response = [];

  LeaguesModel({
    this.response,
  });

  LeaguesModel.fromJson(dynamic json) {
    if (json['response'] != null) {
      response = [];
      json['response'].forEach((v) {
        response?.add(ResponseModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};

    if (response != null) {
      map['response'] = response?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class ResponseModel {
  LeagueData? league;
  Country? country;
  List<Seasons>? seasons;

  ResponseModel({
    this.league,
    this.country,
    this.seasons,
  });

  ResponseModel.fromJson(dynamic json) {
    league = json['league'] != null ? LeagueData.fromJson(json['league']) : null;
    country =
        json['country'] != null ? Country.fromJson(json['country']) : null;
    if (json['seasons'] != null) {
      seasons = [];
      json['seasons'].forEach((v) {
        seasons?.add(Seasons.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (league != null) {
      map['league'] = league?.toJson();
    }
    if (country != null) {
      map['country'] = country?.toJson();
    }
    if (seasons != null) {
      map['seasons'] = seasons?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Seasons {
  Seasons({
    this.year,
    this.start,
    this.end,
    this.current,
    this.coverage,
  });

  Seasons.fromJson(dynamic json) {
    year = json['year'];
    start = json['start'];
    end = json['end'];
    current = json['current'];
    coverage =
        json['coverage'] != null ? Coverage.fromJson(json['coverage']) : null;
  }

  num? year;
  String? start;
  String? end;
  bool? current;
  Coverage? coverage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['year'] = year;
    map['start'] = start;
    map['end'] = end;
    map['current'] = current;
    if (coverage != null) {
      map['coverage'] = coverage?.toJson();
    }
    return map;
  }
}

class Coverage {
  Coverage({
    this.fixtures,
    this.standings,
    this.players,
    this.topScorers,
    this.topAssists,
    this.topCards,
    this.injuries,
    this.predictions,
    this.odds,
  });

  Coverage.fromJson(dynamic json) {
    fixtures =
        json['fixtures'] != null ? Fixtures.fromJson(json['fixtures']) : null;
    standings = json['standings'];
    players = json['players'];
    topScorers = json['top_scorers'];
    topAssists = json['top_assists'];
    topCards = json['top_cards'];
    injuries = json['injuries'];
    predictions = json['predictions'];
    odds = json['odds'];
  }

  Fixtures? fixtures;
  bool? standings;
  bool? players;
  bool? topScorers;
  bool? topAssists;
  bool? topCards;
  bool? injuries;
  bool? predictions;
  bool? odds;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (fixtures != null) {
      map['fixtures'] = fixtures?.toJson();
    }
    map['standings'] = standings;
    map['players'] = players;
    map['top_scorers'] = topScorers;
    map['top_assists'] = topAssists;
    map['top_cards'] = topCards;
    map['injuries'] = injuries;
    map['predictions'] = predictions;
    map['odds'] = odds;
    return map;
  }
}

class Fixtures {
  Fixtures({
    this.events,
    this.lineups,
    this.statisticsFixtures,
    this.statisticsPlayers,
  });

  Fixtures.fromJson(dynamic json) {
    events = json['events'];
    lineups = json['lineups'];
    statisticsFixtures = json['statistics_fixtures'];
    statisticsPlayers = json['statistics_players'];
  }

  bool? events;
  bool? lineups;
  bool? statisticsFixtures;
  bool? statisticsPlayers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['events'] = events;
    map['lineups'] = lineups;
    map['statistics_fixtures'] = statisticsFixtures;
    map['statistics_players'] = statisticsPlayers;
    return map;
  }
}

class Country {
  Country({
    this.name,
    this.code,
    this.flag,
  });

  Country.fromJson(dynamic json) {
    name = json['name'];
    code = json['code'];
    flag = json['flag'];
  }

  String? name;
  String? code;
  String? flag;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['code'] = code;
    map['flag'] = flag;
    return map;
  }
}

class LeagueData {
  LeagueData({
    this.id,
    this.name,
    this.type,
    this.logo,
  });

  LeagueData.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    logo = json['logo'];
  }

  num? id;
  String? name;
  String? type;
  String? logo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['type'] = type;
    map['logo'] = logo;
    return map;
  }
}

class Paging {
  Paging({
    this.current,
    this.total,
  });

  Paging.fromJson(dynamic json) {
    current = json['current'];
    total = json['total'];
  }

  num? current;
  num? total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current'] = current;
    map['total'] = total;
    return map;
  }
}

class Parameters {
  Parameters({
    this.season,
  });

  Parameters.fromJson(dynamic json) {
    season = json['season'];
  }

  String? season;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['season'] = season;
    return map;
  }
}
