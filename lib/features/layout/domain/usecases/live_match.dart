import 'package:dartz/dartz.dart';
import 'package:meringiii/features/layout/domain/repositories/layout_repository.dart';

import '../../../../core/error_handeller/failures.dart';
import '../../data/models/FixtureModel.dart';

class LiveMatchUseCase {
  final LayoutRepository layoutRepository;

  LiveMatchUseCase({required this.layoutRepository});

  Future<Either<Failure, FixtureModel>> call() async {
    return layoutRepository.liveMatch();
  }
}
