// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FixtureModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FixtureModelAdapter extends TypeAdapter<FixtureModel> {
  @override
  final int typeId = 0;

  @override
  FixtureModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FixtureModel(
      response: (fields[0] as List?)?.cast<Response>(),
    );
  }

  @override
  void write(BinaryWriter writer, FixtureModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.response);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FixtureModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ResponseAdapter extends TypeAdapter<Response> {
  @override
  final int typeId = 1;

  @override
  Response read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Response(
      fixture: fields[0] as Fixture?,
      league: fields[1] as League?,
      teams: fields[2] as Teams?,
      goals: fields[3] as Goals?,
      score: fields[4] as Score?,
    );
  }

  @override
  void write(BinaryWriter writer, Response obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.fixture)
      ..writeByte(1)
      ..write(obj.league)
      ..writeByte(2)
      ..write(obj.teams)
      ..writeByte(3)
      ..write(obj.goals)
      ..writeByte(4)
      ..write(obj.score);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ScoreAdapter extends TypeAdapter<Score> {
  @override
  final int typeId = 2;

  @override
  Score read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Score(
      halftime: fields[0] as Halftime?,
      fulltime: fields[1] as Fulltime?,
      extratime: fields[2] as Extratime?,
      penalty: fields[3] as Penalty?,
    );
  }

  @override
  void write(BinaryWriter writer, Score obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.halftime)
      ..writeByte(1)
      ..write(obj.fulltime)
      ..writeByte(2)
      ..write(obj.extratime)
      ..writeByte(3)
      ..write(obj.penalty);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScoreAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PenaltyAdapter extends TypeAdapter<Penalty> {
  @override
  final int typeId = 3;

  @override
  Penalty read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Penalty(
      home: fields[0] as dynamic,
      away: fields[1] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Penalty obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.home)
      ..writeByte(1)
      ..write(obj.away);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PenaltyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ExtratimeAdapter extends TypeAdapter<Extratime> {
  @override
  final int typeId = 4;

  @override
  Extratime read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Extratime(
      home: fields[0] as dynamic,
      away: fields[1] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Extratime obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.home)
      ..writeByte(1)
      ..write(obj.away);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExtratimeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FulltimeAdapter extends TypeAdapter<Fulltime> {
  @override
  final int typeId = 5;

  @override
  Fulltime read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Fulltime(
      home: fields[0] as num?,
      away: fields[1] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, Fulltime obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.home)
      ..writeByte(1)
      ..write(obj.away);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FulltimeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HalftimeAdapter extends TypeAdapter<Halftime> {
  @override
  final int typeId = 6;

  @override
  Halftime read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Halftime(
      home: fields[0] as num?,
      away: fields[1] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, Halftime obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.home)
      ..writeByte(1)
      ..write(obj.away);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HalftimeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GoalsAdapter extends TypeAdapter<Goals> {
  @override
  final int typeId = 7;

  @override
  Goals read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Goals(
      home: fields[0] as num?,
      away: fields[1] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, Goals obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.home)
      ..writeByte(1)
      ..write(obj.away);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GoalsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TeamsAdapter extends TypeAdapter<Teams> {
  @override
  final int typeId = 8;

  @override
  Teams read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Teams(
      home: fields[0] as Home?,
      away: fields[1] as Away?,
    );
  }

  @override
  void write(BinaryWriter writer, Teams obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.home)
      ..writeByte(1)
      ..write(obj.away);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeamsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AwayAdapter extends TypeAdapter<Away> {
  @override
  final int typeId = 9;

  @override
  Away read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Away(
      id: fields[0] as num?,
      name: fields[1] as String?,
      logo: fields[2] as String?,
      winner: fields[3] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, Away obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.logo)
      ..writeByte(3)
      ..write(obj.winner);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AwayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HomeAdapter extends TypeAdapter<Home> {
  @override
  final int typeId = 10;

  @override
  Home read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Home(
      id: fields[0] as num?,
      name: fields[1] as String?,
      logo: fields[2] as String?,
      winner: fields[3] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, Home obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.logo)
      ..writeByte(3)
      ..write(obj.winner);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LeagueAdapter extends TypeAdapter<League> {
  @override
  final int typeId = 11;

  @override
  League read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return League(
      id: fields[0] as num?,
      name: fields[1] as String?,
      country: fields[2] as String?,
      logo: fields[3] as String?,
      flag: fields[4] as String?,
      season: fields[5] as num?,
      round: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, League obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.country)
      ..writeByte(3)
      ..write(obj.logo)
      ..writeByte(4)
      ..write(obj.flag)
      ..writeByte(5)
      ..write(obj.season)
      ..writeByte(6)
      ..write(obj.round);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LeagueAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FixtureAdapter extends TypeAdapter<Fixture> {
  @override
  final int typeId = 12;

  @override
  Fixture read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Fixture(
      id: fields[0] as num?,
      referee: fields[1] as String?,
      timezone: fields[2] as String?,
      date: fields[3] as String?,
      timestamp: fields[4] as num?,
      periods: fields[5] as Periods?,
      venue: fields[6] as Venue?,
      status: fields[7] as Status?,
    );
  }

  @override
  void write(BinaryWriter writer, Fixture obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.referee)
      ..writeByte(2)
      ..write(obj.timezone)
      ..writeByte(3)
      ..write(obj.date)
      ..writeByte(4)
      ..write(obj.timestamp)
      ..writeByte(5)
      ..write(obj.periods)
      ..writeByte(6)
      ..write(obj.venue)
      ..writeByte(7)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FixtureAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StatusAdapter extends TypeAdapter<Status> {
  @override
  final int typeId = 13;

  @override
  Status read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Status(
      long: fields[0] as String?,
      short: fields[1] as String?,
      elapsed: fields[2] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, Status obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.long)
      ..writeByte(1)
      ..write(obj.short)
      ..writeByte(2)
      ..write(obj.elapsed);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class VenueAdapter extends TypeAdapter<Venue> {
  @override
  final int typeId = 14;

  @override
  Venue read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Venue(
      id: fields[0] as num?,
      name: fields[1] as String?,
      city: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Venue obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.city);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VenueAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PeriodsAdapter extends TypeAdapter<Periods> {
  @override
  final int typeId = 15;

  @override
  Periods read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Periods(
      first: fields[0] as num?,
      second: fields[1] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, Periods obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.first)
      ..writeByte(1)
      ..write(obj.second);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PeriodsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PagingAdapter extends TypeAdapter<Paging> {
  @override
  final int typeId = 16;

  @override
  Paging read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Paging(
      current: fields[0] as num?,
      total: fields[1] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, Paging obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.current)
      ..writeByte(1)
      ..write(obj.total);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PagingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ParametersAdapter extends TypeAdapter<Parameters> {
  @override
  final int typeId = 17;

  @override
  Parameters read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Parameters(
      league: fields[0] as String?,
      season: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Parameters obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.league)
      ..writeByte(1)
      ..write(obj.season);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ParametersAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
