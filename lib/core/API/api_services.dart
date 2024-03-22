import 'package:meringiii/core/error_handeller/exceptions.dart';
import 'package:intl/intl.dart';
import 'package:meringiii/features/layout/data/models/FixtureModel.dart';
import '../../features/layout/data/models/LeaguesModel.dart';
import '../dio_helper/dio_helper.dart';
import '../dio_helper/end_points.dart';
import '../local_storage/fixtures.dart';
import '../local_storage/hive_keys.dart';

abstract class ApiServices {
  Future<List<LeagueData>> getAllLeagues();

  Future<FixtureModel> getFixture({required num leagueId});

  Future<FixtureModel> liveMatch();
}

class ApiServicesImpl implements ApiServices {
  final LocalFixtures localFixture;

  ApiServicesImpl({required this.localFixture});

  @override
  Future<List<LeagueData>> getAllLeagues() async {
    List<int> target = [2, 3, 39, 140, 78, 135, 233];
    List<LeagueData> topLeagues = [];
    final response = await DioHelper.getData(url: EndPoint.LEAGUES, query: {
      "season": 2023,
      "current": true,
    });

    if (response.statusCode == 200) {
      LeaguesModel model = LeaguesModel.fromJson(response.data);
      for (var e in model.response!) {
        int ids = e.league!.id!.toInt();
        if (target.contains(ids)) {
          topLeagues.add(e.league!);
        }
      }
      return topLeagues;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<FixtureModel> getFixture({required num leagueId}) async {
    String date = DateFormat('yyyy-MM-dd').format(DateTime.now());
    final response = await DioHelper.getData(url: EndPoint.FIXTURES, query: {
      "season": 2023,
      "league": leagueId,
      "date": date,
      "timezone": "Africa/Cairo",
    });
    if (response.statusCode == 200) {
      FixtureModel fixtureModel = FixtureModel.fromJson(response.data);
      localFixture.saveData(id: HiveKeys.Fixture, data: fixtureModel);
      return fixtureModel;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<FixtureModel> liveMatch() async {

    final response = await DioHelper.getData(url: EndPoint.FIXTURES, query: {
      "timezone": "Africa/Cairo",
      "live": 'all',
      // "live": 2 - 3 - 39 - 140 - 78 - 135 - 233,
    });
    if (response.statusCode == 200) {
      FixtureModel model = FixtureModel.fromJson(response.data);
      return model;
    } else {
      throw ServerException();
    }
  }
}
