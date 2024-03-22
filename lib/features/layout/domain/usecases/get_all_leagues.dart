import 'package:dartz/dartz.dart';
import 'package:meringiii/features/layout/domain/repositories/layout_repository.dart';

import '../../../../core/error_handeller/failures.dart';
import '../../data/models/LeaguesModel.dart';

class GetAllLeaguesUseCase {
  final LayoutRepository layoutRepository;

  GetAllLeaguesUseCase({required this.layoutRepository});

  Future<Either<Failure, List<LeagueData>>> call() async {
    return layoutRepository.getAllLeagues();
  }
}
