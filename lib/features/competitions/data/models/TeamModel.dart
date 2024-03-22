class TeamModel {
  TeamModel({
      this.get, 
      this.parameters, 

      this.results, 
      this.paging,
      this.response,});

  TeamModel.fromJson(dynamic json) {
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
      this.venue,});

  Response.fromJson(dynamic json) {
    team = json['team'] != null ? Team.fromJson(json['team']) : null;
    venue = json['venue'] != null ? Venue.fromJson(json['venue']) : null;
  }
  Team? team;
  Venue? venue;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (team != null) {
      map['team'] = team?.toJson();
    }
    if (venue != null) {
      map['venue'] = venue?.toJson();
    }
    return map;
  }

}

class Venue {
  Venue({
      this.id, 
      this.name, 
      this.address, 
      this.city, 
      this.capacity, 
      this.surface, 
      this.image,});

  Venue.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    address = json['address'];
    city = json['city'];
    capacity = json['capacity'];
    surface = json['surface'];
    image = json['image'];
  }
  int? id;
  String? name;
  String? address;
  String? city;
  int? capacity;
  String? surface;
  String? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['address'] = address;
    map['city'] = city;
    map['capacity'] = capacity;
    map['surface'] = surface;
    map['image'] = image;
    return map;
  }

}

class Team {
  Team({
      this.id, 
      this.name, 
      this.code, 
      this.country, 
      this.founded, 
      this.national, 
      this.logo,});

  Team.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    code = json['code'];
    country = json['country'];
    founded = json['founded'];
    national = json['national'];
    logo = json['logo'];
  }
  int? id;
  String? name;
  String? code;
  String? country;
  int? founded;
  bool? national;
  String? logo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['code'] = code;
    map['country'] = country;
    map['founded'] = founded;
    map['national'] = national;
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
      this.id,});

  Parameters.fromJson(dynamic json) {
    id = json['id'];
  }
  String? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    return map;
  }

}