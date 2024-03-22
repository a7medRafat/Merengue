import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:meringiii/core/shared_preferances/cache_helper.dart';
import 'package:meringiii/features/layout/data/models/FixtureModel.dart';
import '../../../../core/error_handeller/exceptions.dart';
import '../models/LeaguesModel.dart';

abstract class LayoutLocalDataSource {
  Future<List<LeagueData>> getCachedLeagues();

  Future<FixtureModel> getCachedLiveMatches();

  Future<Unit> cacheLeagues(List<LeagueData> leagueData);

  Future<Unit> cachesLiveMatches(FixtureModel liveMatchModel);
}

class LayoutLocalDataSourceImpl implements LayoutLocalDataSource {
  @override
  Future<Unit> cacheLeagues(List<LeagueData> leagueData) {
    List leagueDataToJson = leagueData
        .map<Map<String, dynamic>>((leagueData) => leagueData.toJson())
        .toList();
    CacheHelper.saveData(
        key: 'CACHED_LEAGUES', value: json.encode(leagueDataToJson));
    return Future.value(unit);
  }

  @override
  Future<List<LeagueData>> getCachedLeagues() {
    final jsonString = CacheHelper.getData(key: 'CACHED_LEAGUES');
    if (jsonString != null) {
      List decodeJsonData = json.decode(jsonString);
      List<LeagueData> jsonToLeagueDataModel = decodeJsonData
          .map<LeagueData>(
              (jsonLeagueData) => LeagueData.fromJson(jsonLeagueData))
          .toList();
      return Future.value(jsonToLeagueDataModel);
    } else {
      throw EmptyCacheException();
    }
  }

  @override
  Future<Unit> cachesLiveMatches(FixtureModel liveMatchModel) {
    final liveMatchModelToJson = liveMatchModel.toJson();

    CacheHelper.saveData(
        key: 'CACHED_LIVE', value: json.encode(liveMatchModelToJson));
    return Future.value(unit);
  }

  @override
  Future<FixtureModel> getCachedLiveMatches() {
    final jsonString = CacheHelper.getData(key: 'CACHED_LIVE');
    if (jsonString != null) {
      final decodeJson = json.decode(jsonString);
      final jsonToLiveModel = FixtureModel.fromJson(decodeJson);
      return Future.value(jsonToLiveModel);
    } else {
      throw EmptyCacheException();
    }
  }
}
