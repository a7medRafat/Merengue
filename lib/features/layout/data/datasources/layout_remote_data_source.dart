import 'package:meringiii/features/layout/data/models/FixtureModel.dart';
import '../../../../core/API/api_services.dart';
import '../models/LeaguesModel.dart';

abstract class LayoutRemoteDataSource {
  Future<List<LeagueData>> getAllLeagues();

  Future<FixtureModel> getFixture({required num leagueId});

  Future<FixtureModel> liveMatch();
}

class LayoutRemoteDataSourceImpl implements LayoutRemoteDataSource {
  final ApiServices apiServices;

  LayoutRemoteDataSourceImpl({required this.apiServices});

  @override
  Future<List<LeagueData>> getAllLeagues() async {
    return await apiServices.getAllLeagues();
  }

  @override
  Future<FixtureModel> getFixture({required num leagueId}) async {
    return await apiServices.getFixture(leagueId: leagueId);
  }

  @override
  Future<FixtureModel> liveMatch() async {
    return await apiServices.liveMatch();
  }
}
