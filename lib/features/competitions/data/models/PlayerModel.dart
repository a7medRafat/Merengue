class PlayerModel {
  PlayerModel({
    this.get,
    this.parameters,
    this.results,
    this.paging,
    this.response,
  });

  PlayerModel.fromJson(dynamic json) {
    get = json['get'];
    parameters = json['parameters'] != null
        ? Parameters.fromJson(json['parameters'])
        : null;
    results = json['results'];
    paging = json['paging'] != null ? Paging.fromJson(json['paging']) : null;
    if (json['response'] != null) {
      response = [];
      json['response'].forEach((v) {
        response?.add(Response.fromJson(v));
      });
    }
  }

  String? get;
  Parameters? parameters;
  int? results;
  Paging? paging;
  List<Response>? response;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['get'] = get;
    if (parameters != null) {
      map['parameters'] = parameters?.toJson();
    }
    map['results'] = results;
    if (paging != null) {
      map['paging'] = paging?.toJson();
    }
    if (response != null) {
      map['response'] = response?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Response {
  Response({
    this.player,
    this.statistics,
  });

  Response.fromJson(dynamic json) {
    player = json['player'] != null ? Player.fromJson(json['player']) : null;
    if (json['statistics'] != null) {
      statistics = [];
      json['statistics'].forEach((v) {
        statistics?.add(Statistics.fromJson(v));
      });
    }
  }

  Player? player;
  List<Statistics>? statistics;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (player != null) {
      map['player'] = player?.toJson();
    }
    if (statistics != null) {
      map['statistics'] = statistics?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Statistics {
  Statistics({
    this.team,
    this.league,
    this.games,
    this.substitutes,
    this.shots,
    this.goals,
    this.passes,
    this.tackles,
    this.duels,
    this.dribbles,
    this.fouls,
    this.cards,
    this.penalty,
  });

  Statistics.fromJson(dynamic json) {
    team = json['team'] != null ? Team.fromJson(json['team']) : null;
    league = json['league'] != null ? League.fromJson(json['league']) : null;
    games = json['games'] != null ? Games.fromJson(json['games']) : null;
    substitutes = json['substitutes'] != null
        ? Substitutes.fromJson(json['substitutes'])
        : null;
    shots = json['shots'] != null ? Shots.fromJson(json['shots']) : null;
    goals = json['goals'] != null ? Goals.fromJson(json['goals']) : null;
    passes = json['passes'] != null ? Passes.fromJson(json['passes']) : null;
    tackles =
        json['tackles'] != null ? Tackles.fromJson(json['tackles']) : null;
    duels = json['duels'] != null ? Duels.fromJson(json['duels']) : null;
    dribbles =
        json['dribbles'] != null ? Dribbles.fromJson(json['dribbles']) : null;
    fouls = json['fouls'] != null ? Fouls.fromJson(json['fouls']) : null;
    cards = json['cards'] != null ? Cards.fromJson(json['cards']) : null;
    penalty =
        json['penalty'] != null ? Penalty.fromJson(json['penalty']) : null;
  }

  Team? team;
  League? league;
  Games? games;
  Substitutes? substitutes;
  Shots? shots;
  Goals? goals;
  Passes? passes;
  Tackles? tackles;
  Duels? duels;
  Dribbles? dribbles;
  Fouls? fouls;
  Cards? cards;
  Penalty? penalty;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (team != null) {
      map['team'] = team?.toJson();
    }
    if (league != null) {
      map['league'] = league?.toJson();
    }
    if (games != null) {
      map['games'] = games?.toJson();
    }
    if (substitutes != null) {
      map['substitutes'] = substitutes?.toJson();
    }
    if (shots != null) {
      map['shots'] = shots?.toJson();
    }
    if (goals != null) {
      map['goals'] = goals?.toJson();
    }
    if (passes != null) {
      map['passes'] = passes?.toJson();
    }
    if (tackles != null) {
      map['tackles'] = tackles?.toJson();
    }
    if (duels != null) {
      map['duels'] = duels?.toJson();
    }
    if (dribbles != null) {
      map['dribbles'] = dribbles?.toJson();
    }
    if (fouls != null) {
      map['fouls'] = fouls?.toJson();
    }
    if (cards != null) {
      map['cards'] = cards?.toJson();
    }
    if (penalty != null) {
      map['penalty'] = penalty?.toJson();
    }
    return map;
  }
}

class Penalty {
  Penalty({
    this.won,
    this.commited,
    this.scored,
    this.missed,
    this.saved,
  });

  Penalty.fromJson(dynamic json) {
    won = json['won'];
    commited = json['commited'];
    scored = json['scored'];
    missed = json['missed'];
    saved = json['saved'];
  }

  int? won;
  dynamic commited;
  int? scored;
  int? missed;
  dynamic saved;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['won'] = won;
    map['commited'] = commited;
    map['scored'] = scored;
    map['missed'] = missed;
    map['saved'] = saved;
    return map;
  }
}

class Cards {
  Cards({
    this.yellow,
    this.yellowred,
    this.red,
  });

  Cards.fromJson(dynamic json) {
    yellow = json['yellow'];
    yellowred = json['yellowred'];
    red = json['red'];
  }

  int? yellow;
  int? yellowred;
  int? red;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['yellow'] = yellow;
    map['yellowred'] = yellowred;
    map['red'] = red;
    return map;
  }
}

class Fouls {
  Fouls({
    this.drawn,
    this.committed,
  });

  Fouls.fromJson(dynamic json) {
    drawn = json['drawn'];
    committed = json['committed'];
  }

  int? drawn;
  int? committed;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['drawn'] = drawn;
    map['committed'] = committed;
    return map;
  }
}

class Dribbles {
  Dribbles({
    this.attempts,
    this.success,
    this.past,
  });

  Dribbles.fromJson(dynamic json) {
    attempts = json['attempts'];
    success = json['success'];
    past = json['past'];
  }

  int? attempts;
  int? success;
  dynamic past;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['attempts'] = attempts;
    map['success'] = success;
    map['past'] = past;
    return map;
  }
}

class Duels {
  Duels({
    this.total,
    this.won,
  });

  Duels.fromJson(dynamic json) {
    total = json['total'];
    won = json['won'];
  }

  dynamic total;
  dynamic won;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = total;
    map['won'] = won;
    return map;
  }
}

class Tackles {
  Tackles({
    this.total,
    this.blocks,
    this.interceptions,
  });

  Tackles.fromJson(dynamic json) {
    total = json['total'];
    blocks = json['blocks'];
    interceptions = json['interceptions'];
  }

  int? total;
  int? blocks;
  int? interceptions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = total;
    map['blocks'] = blocks;
    map['interceptions'] = interceptions;
    return map;
  }
}

class Passes {
  Passes({
    this.total,
    this.key,
    this.accuracy,
  });

  Passes.fromJson(dynamic json) {
    total = json['total'];
    key = json['key'];
    accuracy = json['accuracy'];
  }

  int? total;
  int? key;
  int? accuracy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = total;
    map['key'] = key;
    map['accuracy'] = accuracy;
    return map;
  }
}

class Goals {
  Goals({
    this.total,
    this.conceded,
    this.assists,
    this.saves,
  });

  Goals.fromJson(dynamic json) {
    total = json['total'];
    conceded = json['conceded'];
    assists = json['assists'];
    saves = json['saves'];
  }

  int? total;
  dynamic conceded;
  int? assists;
  int? saves;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = total;
    map['conceded'] = conceded;
    map['assists'] = assists;
    map['saves'] = saves;
    return map;
  }
}

class Shots {
  Shots({
    this.total,
    this.on,
  });

  Shots.fromJson(dynamic json) {
    total = json['total'];
    on = json['on'];
  }

  int? total;
  int? on;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = total;
    map['on'] = on;
    return map;
  }
}

class Substitutes {
  Substitutes({
    this.inn,
    this.out,
    this.bench,
  });

  Substitutes.fromJson(dynamic json) {
    inn = json['in'];
    out = json['out'];
    bench = json['bench'];
  }

  int? inn;
  int? out;
  int? bench;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['in'] = inn;
    map['out'] = out;
    map['bench'] = bench;
    return map;
  }
}

class Games {
  Games({
    this.appearences,
    this.lineups,
    this.minutes,
    this.number,
    this.position,
    this.rating,
    this.captain,
  });

  Games.fromJson(dynamic json) {
    appearences = json['appearences'];
    lineups = json['lineups'];
    minutes = json['minutes'];
    number = json['number'];
    position = json['position'];
    rating = json['rating'];
    captain = json['captain'];
  }

  int? appearences;
  int? lineups;
  int? minutes;
  dynamic number;
  String? position;
  String? rating;
  bool? captain;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['appearences'] = appearences;
    map['lineups'] = lineups;
    map['minutes'] = minutes;
    map['number'] = number;
    map['position'] = position;
    map['rating'] = rating;
    map['captain'] = captain;
    return map;
  }
}

class League {
  League({
    this.id,
    this.name,
    this.country,
    this.logo,
    this.flag,
    this.season,
  });

  League.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    country = json['country'];
    logo = json['logo'];
    flag = json['flag'];
    season = json['season'].toString();
  }

  int? id;
  String? name;
  String? country;
  String? logo;
  String? flag;
  String? season;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['country'] = country;
    map['logo'] = logo;
    map['flag'] = flag;
    map['season'] = season;
    return map;
  }
}

class Team {
  Team({
    this.id,
    this.name,
    this.logo,
  });

  Team.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    logo = json['logo'];
  }

  int? id;
  String? name;
  String? logo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['logo'] = logo;
    return map;
  }
}

class Player {
  Player({
    this.id,
    this.name,
    this.firstname,
    this.lastname,
    this.age,
    this.birth,
    this.nationality,
    this.height,
    this.weight,
    this.injured,
    this.photo,
  });

  Player.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    age = json['age'];
    birth = json['birth'] != null ? Birth.fromJson(json['birth']) : null;
    nationality = json['nationality'];
    height = json['height'];
    weight = json['weight'];
    injured = json['injured'];
    photo = json['photo'];
  }

  int? id;
  String? name;
  String? firstname;
  String? lastname;
  int? age;
  Birth? birth;
  String? nationality;
  String? height;
  String? weight;
  bool? injured;
  String? photo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['firstname'] = firstname;
    map['lastname'] = lastname;
    map['age'] = age;
    if (birth != null) {
      map['birth'] = birth?.toJson();
    }
    map['nationality'] = nationality;
    map['height'] = height;
    map['weight'] = weight;
    map['injured'] = injured;
    map['photo'] = photo;
    return map;
  }
}

class Birth {
  Birth({
    this.date,
    this.place,
    this.country,
  });

  Birth.fromJson(dynamic json) {
    date = json['date'];
    place = json['place'];
    country = json['country'];
  }

  String? date;
  String? place;
  String? country;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['place'] = place;
    map['country'] = country;
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

  int? current;
  int? total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current'] = current;
    map['total'] = total;
    return map;
  }
}

class Parameters {
  Parameters({
    this.id,
    this.season,
  });

  Parameters.fromJson(dynamic json) {
    id = json['id'];
    season = json['season'];
  }

  String? id;
  String? season;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['season'] = season;
    return map;
  }
}
