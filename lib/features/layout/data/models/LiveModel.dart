// class LiveModel {
//   LiveModel({
//     this.results,
//     this.paging,
//     this.response,
//   });
//
//   LiveModel.fromJson(dynamic json) {
//     results = json['results'];
//     paging = json['paging'] != null ? Paging.fromJson(json['paging']) : null;
//     if (json['response'] != null) {
//       response = [];
//       json['response'].forEach((v) {
//         response?.add(Response.fromJson(v));
//       });
//     }
//   }
//
//   String? get;
//   Parameters? parameters;
//   List<dynamic>? errors;
//   num? results;
//   Paging? paging;
//   List<Response>? response;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['get'] = get;
//     if (parameters != null) {
//       map['parameters'] = parameters?.toJson();
//     }
//     if (errors != null) {
//       map['errors'] = errors?.map((v) => v.toJson()).toList();
//     }
//     map['results'] = results;
//     if (paging != null) {
//       map['paging'] = paging?.toJson();
//     }
//     if (response != null) {
//       map['response'] = response?.map((v) => v.toJson()).toList();
//     }
//     return map;
//   }
// }
//
// class Response {
//   Response({
//     this.fixture,
//     this.league,
//     this.teams,
//     this.status,
//     this.update,
//     this.odds,
//   });
//
//   Response.fromJson(dynamic json) {
//     fixture =
//         json['fixture'] != null ? Fixture.fromJson(json['fixture']) : null;
//     league = json['league'] != null ? League.fromJson(json['league']) : null;
//     teams = json['teams'] != null ? Teams.fromJson(json['teams']) : null;
//     status = json['status'] != null ? Status.fromJson(json['status']) : null;
//     update = json['update'];
//     if (json['odds'] != null) {
//       odds = [];
//       json['odds'].forEach((v) {
//         odds?.add(Odds.fromJson(v));
//       });
//     }
//   }
//
//   Fixture? fixture;
//   League? league;
//   Teams? teams;
//   Status? status;
//   String? update;
//   List<Odds>? odds;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     if (fixture != null) {
//       map['fixture'] = fixture?.toJson();
//     }
//     if (league != null) {
//       map['league'] = league?.toJson();
//     }
//     if (teams != null) {
//       map['teams'] = teams?.toJson();
//     }
//     if (status != null) {
//       map['status'] = status?.toJson();
//     }
//     map['update'] = update;
//     if (odds != null) {
//       map['odds'] = odds?.map((v) => v.toJson()).toList();
//     }
//     return map;
//   }
// }
//
// class Odds {
//   Odds({
//     this.id,
//     this.name,
//     this.values,
//   });
//
//   Odds.fromJson(dynamic json) {
//     id = json['id'];
//     name = json['name'];
//     if (json['values'] != null) {
//       values = [];
//       json['values'].forEach((v) {
//         values?.add(Values.fromJson(v));
//       });
//     }
//   }
//
//   num? id;
//   String? name;
//   List<Values>? values;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = id;
//     map['name'] = name;
//     if (values != null) {
//       map['values'] = values?.map((v) => v.toJson()).toList();
//     }
//     return map;
//   }
// }
//
// class Values {
//   Values({
//     this.value,
//     this.odd,
//     this.handicap,
//     this.main,
//     this.suspended,
//   });
//
//   Values.fromJson(dynamic json) {
//     value = json['value'];
//     odd = json['odd'];
//     handicap = json['handicap'];
//     main = json['main'];
//     suspended = json['suspended'];
//   }
//
//   String? value;
//   String? odd;
//   String? handicap;
//   dynamic main;
//   bool? suspended;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['value'] = value;
//     map['odd'] = odd;
//     map['handicap'] = handicap;
//     map['main'] = main;
//     map['suspended'] = suspended;
//     return map;
//   }
// }
//
// class Status {
//   Status({
//     this.stopped,
//     this.blocked,
//     this.finished,
//   });
//
//   Status.fromJson(dynamic json) {
//     stopped = json['stopped'];
//     blocked = json['blocked'];
//     finished = json['finished'];
//   }
//
//   bool? stopped;
//   bool? blocked;
//   bool? finished;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['stopped'] = stopped;
//     map['blocked'] = blocked;
//     map['finished'] = finished;
//     return map;
//   }
// }
//
// class Teams {
//   Teams({
//     this.home,
//     this.away,
//   });
//
//   Teams.fromJson(dynamic json) {
//     home = json['home'] != null ? Home.fromJson(json['home']) : null;
//     away = json['away'] != null ? Away.fromJson(json['away']) : null;
//   }
//
//   Home? home;
//   Away? away;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     if (home != null) {
//       map['home'] = home?.toJson();
//     }
//     if (away != null) {
//       map['away'] = away?.toJson();
//     }
//     return map;
//   }
// }
//
// class Away {
//   Away({
//     this.id,
//     this.goals,
//   });
//
//   Away.fromJson(dynamic json) {
//     id = json['id'];
//     goals = json['goals'];
//   }
//
//   num? id;
//   num? goals;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = id;
//     map['goals'] = goals;
//     return map;
//   }
// }
//
// class Home {
//   Home({
//     this.id,
//     this.goals,
//   });
//
//   Home.fromJson(dynamic json) {
//     id = json['id'];
//     goals = json['goals'];
//   }
//
//   num? id;
//   num? goals;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = id;
//     map['goals'] = goals;
//     return map;
//   }
// }
//
// class League {
//   League({
//     this.id,
//     this.season,
//   });
//
//   League.fromJson(dynamic json) {
//     id = json['id'];
//     season = json['season'];
//   }
//
//   num? id;
//   num? season;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = id;
//     map['season'] = season;
//     return map;
//   }
// }
//
// class Fixture {
//   Fixture({
//     this.id,
//     this.state,
//   });
//
//   Fixture.fromJson(dynamic json) {
//     id = json['id'];
//     state = json['status'] != null ? Status.fromJson(json['status']) : null;
//   }
//
//   num? id;
//   Status? state;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = id;
//     if (state != null) {
//       map['status'] = state?.toJson();
//     }
//     return map;
//   }
// }
//
// class Status {
//   Status({
//     this.long,
//     this.elapsed,
//     this.seconds,
//   });
//
//   Status.fromJson(dynamic json) {
//     long = json['long'];
//     elapsed = json['elapsed'];
//     seconds = json['seconds'];
//   }
//
//   String? long;
//   num? elapsed;
//   String? seconds;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['long'] = long;
//     map['elapsed'] = elapsed;
//     map['seconds'] = seconds;
//     return map;
//   }
// }
//
// class Paging {
//   Paging({
//     this.current,
//     this.total,
//   });
//
//   Paging.fromJson(dynamic json) {
//     current = json['current'];
//     total = json['total'];
//   }
//
//   num? current;
//   num? total;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['current'] = current;
//     map['total'] = total;
//     return map;
//   }
// }
//
// class Parameters {
//   Parameters({
//     this.fixture,
//   });
//
//   Parameters.fromJson(dynamic json) {
//     fixture = json['fixture'];
//   }
//
//   String? fixture;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['fixture'] = fixture;
//     return map;
//   }
// }
