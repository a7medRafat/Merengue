class LineupModel {
  LineupModel({
      this.get, 
      this.parameters, 
      this.errors, 
      this.results,

      this.paging, 
      this.response,});

  LineupModel.fromJson(dynamic json) {
    get = json['get'];
    parameters = json['parameters'] != null ? Parameters.fromJson(json['parameters']) : null;

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
      this.team, 
      this.formation, 
      this.startXI, 
      this.substitutes, 
      this.coach,});

  Response.fromJson(dynamic json) {
    team = json['team'] != null ? Team.fromJson(json['team']) : null;
    formation = json['formation'];
    if (json['startXI'] != null) {
      startXI = [];
      json['startXI'].forEach((v) {
        startXI?.add(StartXi.fromJson(v));
      });
    }
    if (json['substitutes'] != null) {
      substitutes = [];
      json['substitutes'].forEach((v) {
        substitutes?.add(Substitutes.fromJson(v));
      });
    }
    coach = json['coach'] != null ? Coach.fromJson(json['coach']) : null;
  }
  Team? team;
  String? formation;
  List<StartXi>? startXI;
  List<Substitutes>? substitutes;
  Coach? coach;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (team != null) {
      map['team'] = team?.toJson();
    }
    map['formation'] = formation;
    if (startXI != null) {
      map['startXI'] = startXI?.map((v) => v.toJson()).toList();
    }
    if (substitutes != null) {
      map['substitutes'] = substitutes?.map((v) => v.toJson()).toList();
    }
    if (coach != null) {
      map['coach'] = coach?.toJson();
    }
    return map;
  }

}

class Coach {
  Coach({
      this.id, 
      this.name, 
      this.photo,});

  Coach.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    photo = json['photo'];
  }
  int? id;
  String? name;
  String? photo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['photo'] = photo;
    return map;
  }

}

class Substitutes {
  Substitutes({
      this.player,});

  Substitutes.fromJson(dynamic json) {
    player = json['player'] != null ? Player.fromJson(json['player']) : null;
  }
  Player? player;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (player != null) {
      map['player'] = player?.toJson();
    }
    return map;
  }

}

class Player {
  Player({
      this.id, 
      this.name, 
      this.number, 
      this.pos, 
      this.grid,});

  Player.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    number = json['number'];
    pos = json['pos'];
    grid = json['grid'];
  }
  int? id;
  String? name;
  int? number;
  String? pos;
  dynamic grid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['number'] = number;
    map['pos'] = pos;
    map['grid'] = grid;
    return map;
  }

}

class StartXi {
  StartXi({
      this.player,});

  StartXi.fromJson(dynamic json) {
    player = json['player'] != null ? Player.fromJson(json['player']) : null;
  }
  Player? player;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (player != null) {
      map['player'] = player?.toJson();
    }
    return map;
  }

}

class HomePlayer {
  HomePlayer({
      this.id, 
      this.name, 
      this.number, 
      this.pos, 
      this.grid,});

  HomePlayer.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    number = json['number'];
    pos = json['pos'];
    grid = json['grid'];
  }
  int? id;
  String? name;
  int? number;
  String? pos;
  String? grid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['number'] = number;
    map['pos'] = pos;
    map['grid'] = grid;
    return map;
  }

}

class Team {
  Team({
      this.id, 
      this.name, 
      this.logo, 
      this.colors,});

  Team.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    logo = json['logo'];
    colors = json['colors'] != null ? Colors.fromJson(json['colors']) : null;
  }
  int? id;
  String? name;
  String? logo;
  Colors? colors;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['logo'] = logo;
    if (colors != null) {
      map['colors'] = colors?.toJson();
    }
    return map;
  }

}

class Colors {
  Colors({
      this.player, 
      this.goalkeeper,});

  Colors.fromJson(dynamic json) {
    player = json['player'] != null ? Player.fromJson(json['player']) : null;
    goalkeeper = json['goalkeeper'] != null ? Goalkeeper.fromJson(json['goalkeeper']) : null;
  }
  Player? player;
  Goalkeeper? goalkeeper;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (player != null) {
      map['player'] = player?.toJson();
    }
    if (goalkeeper != null) {
      map['goalkeeper'] = goalkeeper?.toJson();
    }
    return map;
  }

}

class Goalkeeper {
  Goalkeeper({
      this.primary, 
      this.number, 
      this.border,});

  Goalkeeper.fromJson(dynamic json) {
    primary = json['primary'];
    number = json['number'];
    border = json['border'];
  }
  String? primary;
  String? number;
  String? border;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['primary'] = primary;
    map['number'] = number;
    map['border'] = border;
    return map;
  }

}

class AwayPlayer {
  AwayPlayer({
      this.primary, 
      this.number, 
      this.border,});

  AwayPlayer.fromJson(dynamic json) {
    primary = json['primary'];
    number = json['number'];
    border = json['border'];
  }
  String? primary;
  String? number;
  String? border;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['primary'] = primary;
    map['number'] = number;
    map['border'] = border;
    return map;
  }

}

class Paging {
  Paging({
      this.current, 
      this.total,});

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
      this.fixture,});

  Parameters.fromJson(dynamic json) {
    fixture = json['fixture'];
  }
  String? fixture;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fixture'] = fixture;
    return map;
  }

}