class StatsModel {
  StatsModel({
    this.get,
    this.parameters,
    this.results,
    this.paging,
    this.response,
  });

  StatsModel.fromJson(dynamic json) {
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

  StatsModel copyWith({
    String? get,
    Parameters? parameters,
    int? results,
    Paging? paging,
    List<Response>? response,
  }) =>
      StatsModel(
        get: get ?? this.get,
        parameters: parameters ?? this.parameters,
        results: results ?? this.results,
        paging: paging ?? this.paging,
        response: response ?? this.response,
      );

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
    this.statistics,
  });

  Response.fromJson(dynamic json) {
    team = json['team'] != null ? Team.fromJson(json['team']) : null;
    if (json['statistics'] != null) {
      statistics = [];
      json['statistics'].forEach((v) {
        statistics?.add(Statistics.fromJson(v));
      });
    }
  }

  Team? team;
  List<Statistics>? statistics;

  Response copyWith({
    Team? team,
    List<Statistics>? statistics,
  }) =>
      Response(
        team: team ?? this.team,
        statistics: statistics ?? this.statistics,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (team != null) {
      map['team'] = team?.toJson();
    }
    if (statistics != null) {
      map['statistics'] = statistics?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Statistics {
  Statistics({
    this.type,
    this.value,
  });

  Statistics.fromJson(dynamic json) {
    type = json['type'];
    value = json['value'].toString();
  }

  String? type;
  String? value;

  // Statistics copyWith({
  //   String? type,
  //   int? value,
  // }) =>
  //     Statistics(
  //       type: type ?? this.type,
  //       value: value ?? this.value,
  //     );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['value'] = value;
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

  Team copyWith({
    int? id,
    String? name,
    String? logo,
  }) =>
      Team(
        id: id ?? this.id,
        name: name ?? this.name,
        logo: logo ?? this.logo,
      );

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

  Paging copyWith({
    int? current,
    int? total,
  }) =>
      Paging(
        current: current ?? this.current,
        total: total ?? this.total,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current'] = current;
    map['total'] = total;
    return map;
  }
}

class Parameters {
  Parameters({
    this.fixture,
  });

  Parameters.fromJson(dynamic json) {
    fixture = json['fixture'];
  }

  String? fixture;

  Parameters copyWith({
    String? fixture,
  }) =>
      Parameters(
        fixture: fixture ?? this.fixture,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fixture'] = fixture;
    return map;
  }
}
