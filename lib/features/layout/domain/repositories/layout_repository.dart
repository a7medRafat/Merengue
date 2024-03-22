import 'package:dartz/dartz.dart';
import '../../../../core/error_handeller/failures.dart';
import '../../data/models/FixtureModel.dart';
import '../../data/models/LeaguesModel.dart';

abstract class LayoutRepository {
  Future<Either<Failure, List<LeagueData>>> getAllLeagues();

  Future<Either<Failure, FixtureModel>> getFixture({required num leagueId});

  Future<Either<Failure, FixtureModel>> liveMatch();
}
