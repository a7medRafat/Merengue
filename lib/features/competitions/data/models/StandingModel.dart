class StandingModel {
  StandingModel({
    this.get,
    this.parameters,
    this.errors,
    this.results,
    this.paging,
    this.response,
  });

  StandingModel.fromJson(dynamic json) {
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
  List<dynamic>? errors;
  int? results;
  Paging? paging;
  List<Response>? response;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['get'] = get;
    if (parameters != null) {
      map['parameters'] = parameters?.toJson();
    }
    if (errors != null) {
      map['errors'] = errors?.map((v) => v.toJson()).toList();
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
    this.league,
  });

  Response.fromJson(dynamic json) {
    league = json['league'] != null ? League.fromJson(json['league']) : null;
  }

  League? league;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (league != null) {
      map['league'] = league?.toJson();
    }
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
    this.standings,
  });

  League.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    country = json['country'];
    logo = json['logo'];
    flag = json['flag'];
    season = json['season'];
    if (json['standings'] != null) {
      standings = [];
      json['standings'][0].forEach((v) {

        standings?.add(Standings.fromJson(v));
      });
    }
  }

  int? id;
  String? name;
  String? country;
  String? logo;
  String? flag;
  int? season;
  List<Standings>? standings;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['country'] = country;
    map['logo'] = logo;
    map['flag'] = flag;
    map['season'] = season;
    if (standings != null) {
      // map['standings'] = standings?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Standings {
  Standings({
    this.rank,
    this.team,
    this.points,
    this.goalsDiff,
    this.group,
    this.form,
    this.status,
    this.description,
    this.all,
    this.home,
    this.away,
    this.update,
  });

  Standings.fromJson(dynamic json) {
    rank = json['rank'];
    team = json['team'] != null ? Team.fromJson(json['team']) : null;
    points = json['points'];
    goalsDiff = json['goalsDiff'];
    group = json['group'];
    form = json['form'];
    status = json['status'];
    description = json['description'];
    all = json['all'] != null ? All.fromJson(json['all']) : null;
    home = json['home'] != null ? Home.fromJson(json['home']) : null;
    away = json['away'] != null ? Away.fromJson(json['away']) : null;
    update = json['update'];
  }

  int? rank;
  Team? team;
  int? points;
  int? goalsDiff;
  String? group;
  String? form;
  String? status;
  String? description;
  All? all;
  Home? home;
  Away? away;
  String? update;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rank'] = rank;
    if (team != null) {
      map['team'] = team?.toJson();
    }
    map['points'] = points;
    map['goalsDiff'] = goalsDiff;
    map['group'] = group;
    map['form'] = form;
    map['status'] = status;
    map['description'] = description;
    if (all != null) {
      map['all'] = all?.toJson();
    }
    if (home != null) {
      map['home'] = home?.toJson();
    }
    if (away != null) {
      map['away'] = away?.toJson();
    }
    map['update'] = update;
    return map;
  }
}

class Away {
  Away({
    this.played,
    this.win,
    this.draw,
    this.lose,
    this.goals,
  });

  Away.fromJson(dynamic json) {
    played = json['played'];
    win = json['win'];
    draw = json['draw'];
    lose = json['lose'];
    goals = json['goals'] != null ? AwayGoals.fromJson(json['goals']) : null;
  }

  int? played;
  int? win;
  int? draw;
  int? lose;
  AwayGoals? goals;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['played'] = played;
    map['win'] = win;
    map['draw'] = draw;
    map['lose'] = lose;
    if (goals != null) {
      map['goals'] = goals?.toJson();
    }
    return map;
  }
}

class AwayGoals {
  AwayGoals({
    this.afor,
    this.against,
  });

  AwayGoals.fromJson(dynamic json) {
    afor = json['for'];
    against = json['against'];
  }

  int? afor;
  int? against;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['for'] = afor;
    map['against'] = against;
    return map;
  }
}

class Home {
  Home({
    this.played,
    this.win,
    this.draw,
    this.lose,
    this.goals,
  });

  Home.fromJson(dynamic json) {
    played = json['played'];
    win = json['win'];
    draw = json['draw'];
    lose = json['lose'];
    goals = json['goals'] != null ? HomeGoals.fromJson(json['goals']) : null;
  }

  int? played;
  int? win;
  int? draw;
  int? lose;
  HomeGoals? goals;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['played'] = played;
    map['win'] = win;
    map['draw'] = draw;
    map['lose'] = lose;
    if (goals != null) {
      map['goals'] = goals?.toJson();
    }
    return map;
  }
}

class HomeGoals {
  HomeGoals({
    this.hfor,
    this.against,
  });

  HomeGoals.fromJson(dynamic json) {
    hfor = json['for'];
    against = json['against'];
  }

  int? hfor;
  int? against;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['for'] = hfor;
    map['against'] = against;
    return map;
  }
}

class All {
  All({
    this.played,
    this.win,
    this.draw,
    this.lose,
    this.goals,
  });

  All.fromJson(dynamic json) {
    played = json['played'];
    win = json['win'];
    draw = json['draw'];
    lose = json['lose'];
    goals = json['goals'] != null ? AllGoals.fromJson(json['goals']) : null;
  }

  int? played;
  int? win;
  int? draw;
  int? lose;
  AllGoals? goals;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['played'] = played;
    map['win'] = win;
    map['draw'] = draw;
    map['lose'] = lose;
    if (goals != null) {
      map['goals'] = goals?.toJson();
    }
    return map;
  }
}

class AllGoals {
  AllGoals({
    this.afor,
    this.against,
  });

  AllGoals.fromJson(dynamic json) {
    afor = json['for'];
    against = json['against'];
  }

  int? afor;
  int? against;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['for'] = afor;
    map['against'] = against;
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
    this.league,
    this.season,
  });

  Parameters.fromJson(dynamic json) {
    league = json['league'];
    season = json['season'];
  }

  String? league;
  String? season;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['league'] = league;
    map['season'] = season;
    return map;
  }
}
