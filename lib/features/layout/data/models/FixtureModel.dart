import 'package:hive/hive.dart';

part 'FixtureModel.g.dart';

@HiveType(typeId: 0)
class FixtureModel extends HiveObject {
  @HiveField(0)
  List<Response>? response;

  FixtureModel({
    this.response,
  });

  FixtureModel.fromJson(dynamic json) {
    if (json['response'] != null) {
      response = [];
      json['response'].forEach((v) {
        response?.add(Response.fromJson(v));
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

@HiveType(typeId: 1)
class Response {
  Response({
    this.fixture,
    this.league,
    this.teams,
    this.goals,
    this.score,
  });

  Response.fromJson(dynamic json) {
    fixture =
        json['fixture'] != null ? Fixture.fromJson(json['fixture']) : null;
    league = json['league'] != null ? League.fromJson(json['league']) : null;
    teams = json['teams'] != null ? Teams.fromJson(json['teams']) : null;
    goals = json['goals'] != null ? Goals.fromJson(json['goals']) : null;
    score = json['score'] != null ? Score.fromJson(json['score']) : null;
  }

  @HiveField(0) Fixture? fixture;
  @HiveField(1) League? league;
  @HiveField(2) Teams? teams;
  @HiveField(3) Goals? goals;
  @HiveField(4) Score? score;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (fixture != null) {
      map['fixture'] = fixture?.toJson();
    }
    if (league != null) {
      map['league'] = league?.toJson();
    }
    if (teams != null) {
      map['teams'] = teams?.toJson();
    }
    if (goals != null) {
      map['goals'] = goals?.toJson();
    }
    if (score != null) {
      map['score'] = score?.toJson();
    }
    return map;
  }
}

@HiveType(typeId: 2)
class Score {
  Score({
    this.halftime,
    this.fulltime,
    this.extratime,
    this.penalty,
  });

  Score.fromJson(dynamic json) {
    halftime =
        json['halftime'] != null ? Halftime.fromJson(json['halftime']) : null;
    fulltime =
        json['fulltime'] != null ? Fulltime.fromJson(json['fulltime']) : null;
    extratime = json['extratime'] != null
        ? Extratime.fromJson(json['extratime'])
        : null;
    penalty =
        json['penalty'] != null ? Penalty.fromJson(json['penalty']) : null;
  }

  @HiveField(0) Halftime? halftime;
  @HiveField(1) Fulltime? fulltime;
  @HiveField(2) Extratime? extratime;
  @HiveField(3) Penalty? penalty;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (halftime != null) {
      map['halftime'] = halftime?.toJson();
    }
    if (fulltime != null) {
      map['fulltime'] = fulltime?.toJson();
    }
    if (extratime != null) {
      map['extratime'] = extratime?.toJson();
    }
    if (penalty != null) {
      map['penalty'] = penalty?.toJson();
    }
    return map;
  }
}

@HiveType(typeId: 3)
class Penalty {
  Penalty({
    this.home,
    this.away,
  });

  Penalty.fromJson(dynamic json) {
    home = json['home'];
    away = json['away'];
  }

  @HiveField(0) dynamic home;
  @HiveField(1) dynamic away;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['home'] = home;
    map['away'] = away;
    return map;
  }
}

@HiveType(typeId: 4)
class Extratime {
  Extratime({
    this.home,
    this.away,
  });

  Extratime.fromJson(dynamic json) {
    home = json['home'];
    away = json['away'];
  }

  @HiveField(0) dynamic home;
  @HiveField(1) dynamic away;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['home'] = home;
    map['away'] = away;
    return map;
  }
}

@HiveType(typeId: 5)
class Fulltime {
  Fulltime({
    this.home,
    this.away,
  });

  Fulltime.fromJson(dynamic json) {
    home = json['home'];
    away = json['away'];
  }

  @HiveField(0) num? home;
  @HiveField(1) num? away;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['home'] = home;
    map['away'] = away;
    return map;
  }
}

@HiveType(typeId: 6)
class Halftime {
  Halftime({
    this.home,
    this.away,
  });

  Halftime.fromJson(dynamic json) {
    home = json['home'];
    away = json['away'];
  }

  @HiveField(0) num? home;
  @HiveField(1) num? away;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['home'] = home;
    map['away'] = away;
    return map;
  }
}

@HiveType(typeId: 7)
class Goals {
  Goals({
    this.home,
    this.away,
  });

  Goals.fromJson(dynamic json) {
    home = json['home'];
    away = json['away'];
  }

  @HiveField(0) num? home;
  @HiveField(1)num? away;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['home'] = home;
    map['away'] = away;
    return map;
  }
}

@HiveType(typeId: 8)
class Teams {
  Teams({
    this.home,
    this.away,
  });

  Teams.fromJson(dynamic json) {
    home = json['home'] != null ? Home.fromJson(json['home']) : null;
    away = json['away'] != null ? Away.fromJson(json['away']) : null;
  }

  @HiveField(0) Home? home;
  @HiveField(1) Away? away;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (home != null) {
      map['home'] = home?.toJson();
    }
    if (away != null) {
      map['away'] = away?.toJson();
    }
    return map;
  }
}

@HiveType(typeId: 9)
class Away {
  Away({
    this.id,
    this.name,
    this.logo,
    this.winner,
  });

  Away.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    logo = json['logo'];
    winner = json['winner'];
  }

  @HiveField(0) num? id;
  @HiveField(1) String? name;
  @HiveField(2) String? logo;
  @HiveField(3) bool? winner;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['logo'] = logo;
    map['winner'] = winner;
    return map;
  }
}

@HiveType(typeId: 10)
class Home {
  Home({
    this.id,
    this.name,
    this.logo,
    this.winner,
  });

  Home.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    logo = json['logo'];
    winner = json['winner'];
  }

  @HiveField(0) num? id;
  @HiveField(1) String? name;
  @HiveField(2) String? logo;
  @HiveField(3) bool? winner;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['logo'] = logo;
    map['winner'] = winner;
    return map;
  }
}

@HiveType(typeId: 11)
class League {
  League({
    this.id,
    this.name,
    this.country,
    this.logo,
    this.flag,
    this.season,
    this.round,
  });

  League.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    country = json['country'];
    logo = json['logo'];
    flag = json['flag'];
    season = json['season'];
    round = json['round'];
  }

  @HiveField(0) num? id;
  @HiveField(1) String? name;
  @HiveField(2) String? country;
  @HiveField(3) String? logo;
  @HiveField(4) String? flag;
  @HiveField(5) num? season;
  @HiveField(6) String? round;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['country'] = country;
    map['logo'] = logo;
    map['flag'] = flag;
    map['season'] = season;
    map['round'] = round;
    return map;
  }
}

@HiveType(typeId: 12)
class Fixture {
  Fixture({
    this.id,
    this.referee,
    this.timezone,
    this.date,
    this.timestamp,
    this.periods,
    this.venue,
    this.status,
  });

  Fixture.fromJson(dynamic json) {
    id = json['id'];
    referee = json['referee'];
    timezone = json['timezone'];
    date = json['date'];
    timestamp = json['timestamp'];
    periods =
        json['periods'] != null ? Periods.fromJson(json['periods']) : null;
    venue = json['venue'] != null ? Venue.fromJson(json['venue']) : null;
    status = json['status'] != null ? Status.fromJson(json['status']) : null;
  }

  @HiveField(0) num? id;
  @HiveField(1) String? referee;
  @HiveField(2)String? timezone;
  @HiveField(3) String? date;
  @HiveField(4) num? timestamp;
  @HiveField(5) Periods? periods;
  @HiveField(6) Venue? venue;
  @HiveField(7) Status? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['referee'] = referee;
    map['timezone'] = timezone;
    map['date'] = date;
    map['timestamp'] = timestamp;
    if (periods != null) {
      map['periods'] = periods?.toJson();
    }
    if (venue != null) {
      map['venue'] = venue?.toJson();
    }
    if (status != null) {
      map['status'] = status?.toJson();
    }
    return map;
  }
}

@HiveType(typeId: 13)
class Status {
  Status({
    this.long,
    this.short,
    this.elapsed,
  });

  Status.fromJson(dynamic json) {
    long = json['long'];
    short = json['short'];
    elapsed = json['elapsed'];
  }

  @HiveField(0) String? long;
  @HiveField(1) String? short;
  @HiveField(2) num? elapsed;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['long'] = long;
    map['short'] = short;
    map['elapsed'] = elapsed;
    return map;
  }
}

@HiveType(typeId: 14)
class Venue {
  Venue({
    this.id,
    this.name,
    this.city,
  });

  Venue.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    city = json['city'];
  }

  @HiveField(0) num? id;
  @HiveField(1) String? name;
  @HiveField(2) String? city;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['city'] = city;
    return map;
  }
}

@HiveType(typeId: 15)
class Periods {
  Periods({
    this.first,
    this.second,
  });

  Periods.fromJson(dynamic json) {
    first = json['first'];
    second = json['second'];
  }

  @HiveField(0) num? first;
  @HiveField(1) num? second;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first'] = first;
    map['second'] = second;
    return map;
  }
}

@HiveType(typeId: 16)
class Paging {
  Paging({
    this.current,
    this.total,
  });

  Paging.fromJson(dynamic json) {
    current = json['current'];
    total = json['total'];
  }

  @HiveField(0) num? current;
  @HiveField(1) num? total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current'] = current;
    map['total'] = total;
    return map;
  }
}

@HiveType(typeId: 17)
class Parameters {
  Parameters({
    this.league,
    this.season,
  });

  Parameters.fromJson(dynamic json) {
    league = json['league'];
    season = json['season'];
  }

  @HiveField(0) String? league;
  @HiveField(1) String? season;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['league'] = league;
    map['season'] = season;
    return map;
  }
}
