import 'package:dartz/dartz.dart';
import 'package:meringiii/features/layout/domain/repositories/layout_repository.dart';

import '../../../../core/error_handeller/failures.dart';
import '../../data/models/FixtureModel.dart';

class GetFixtureUseCase {
  final LayoutRepository layoutRepository;

  GetFixtureUseCase({required this.layoutRepository});

  Future<Either<Failure, FixtureModel>> call({required num leagueId}) async {
    return layoutRepository.getFixture(leagueId: leagueId);
  }
}
