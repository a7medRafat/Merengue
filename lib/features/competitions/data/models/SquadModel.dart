class SquadModel {
  SquadModel({
      this.get, 
      this.parameters, 

      this.results, 
      this.paging, 
      this.response,});

  SquadModel.fromJson(dynamic json) {
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
      this.team, 
      this.players,});

  Response.fromJson(dynamic json) {
    team = json['team'] != null ? Team.fromJson(json['team']) : null;
    if (json['players'] != null) {
      players = [];
      json['players'].forEach((v) {
        players?.add(Players.fromJson(v));
      });
    }
  }
  Team? team;
  List<Players>? players;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (team != null) {
      map['team'] = team?.toJson();
    }
    if (players != null) {
      map['players'] = players?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Players {
  Players({
      this.id, 
      this.name, 
      this.age, 
      this.number, 
      this.position, 
      this.photo,});

  Players.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    age = json['age'];
    number = json['number'];
    position = json['position'];
    photo = json['photo'];
  }
  int? id;
  String? name;
  int? age;
  int? number;
  String? position;
  String? photo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['age'] = age;
    map['number'] = number;
    map['position'] = position;
    map['photo'] = photo;
    return map;
  }

}

class Team {
  Team({
      this.id, 
      this.name, 
      this.logo,});

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
      this.team,});

  Parameters.fromJson(dynamic json) {
    team = json['team'];
  }
  String? team;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['team'] = team;
    return map;
  }

}