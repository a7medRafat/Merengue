import 'package:dartz/dartz.dart';
import 'package:meringiii/core/error_handeller/exceptions.dart';
import 'package:meringiii/core/error_handeller/failures.dart';
import 'package:meringiii/features/layout/data/datasources/layout_local_data_source.dart';
import 'package:meringiii/features/layout/data/models/FixtureModel.dart';
import 'package:meringiii/features/layout/data/models/LeaguesModel.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repositories/layout_repository.dart';
import '../datasources/layout_remote_data_source.dart';

class LayoutRepositoryImpl extends LayoutRepository {
  final LayoutRemoteDataSource remoteDataSource;
  final LayoutLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  LayoutRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, List<LeagueData>>> getAllLeagues() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.getAllLeagues();
        localDataSource.cacheLeagues(response);
        return right(response);
      } on ServerException catch (e) {
        return left(ServerFailure(error: e));
      }
    } else {
      try {
        final localData = await localDataSource.getCachedLeagues();
        return right(localData);
      } on EmptyCacheException catch (e) {
        return left(EmptyCacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, FixtureModel>> getFixture(
      {required num leagueId}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.getFixture(leagueId: leagueId);
        return right(response);
      } on ServerException catch (e) {
        return left(ServerFailure(error: e));
      }
    } else {
      return left(EmptyCacheFailure());
    }
  }

  @override
  Future<Either<Failure, FixtureModel>> liveMatch() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.liveMatch();
        localDataSource.cachesLiveMatches(response);
        return right(response);
      } on ServerException catch (e) {
        return left(ServerFailure(error: e));
      }
    } else {
      try {
        final localData = await localDataSource.getCachedLiveMatches();
        return right(localData);
      } on EmptyCacheException catch (e) {
        return left(EmptyCacheFailure());
      }
    }
  }
}
