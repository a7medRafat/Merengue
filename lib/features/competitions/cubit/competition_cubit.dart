import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/core/dio_helper/end_points.dart';
import 'package:meringiii/features/competitions/data/models/PlayerModel.dart';
import 'package:meringiii/features/competitions/data/models/SquadModel.dart';
import 'package:meringiii/features/competitions/data/models/TeamModel.dart';
import 'package:meta/meta.dart';

import '../../../core/dio_helper/dio_helper.dart';
import '../data/models/StandingModel.dart';

part 'competition_state.dart';

class CompetitionCubit extends Cubit<CompetitionState> {
  CompetitionCubit() : super(CompetitionInitial());

  static CompetitionCubit get(context) => BlocProvider.of(context);

  StandingModel? standingsModel;

  void getStandings({required int id}) async {
    emit(GetStandingsLoadingState());
    final res = await DioHelper.getData(url: EndPoint.STANDINGS, query: {
      'league': id,
      'season': 2023,
    });

    if (res.statusCode == 200) {
      standingsModel = StandingModel.fromJson(res.data);
      print(
          '=====================${standingsModel!.response![0].league!.name!}');
      emit(GetStandingsSuccessState());
    } else {
      print(res.statusMessage);
      emit(GetStandingsErrorState());
    }
  }

  int selectedLeague = -1;

  void changeLeague(int index) {
    selectedLeague = index;
    print(selectedLeague);
    emit(GetLeagueSuccessState());
  }

  TeamModel? teamModel;

  getTeamInfo({required int teamId}) async {
    emit(GetTeamLoadingState());
    final res = await DioHelper.getData(url: EndPoint.TEAMS, query: {
      'id': teamId,
    });

    if (res.statusCode == 200) {
      teamModel = TeamModel.fromJson(res.data);
      print('=====================${teamModel!.response![0].team!.name!}');
      emit(GetTeamSuccessState());
    } else {
      print(res.statusMessage);
      emit(GetTeamErrorState());
    }
  }

  SquadModel? squadModel;

  getTeamSquad({required int teamId}) async {
    emit(GetSquadLoadingState());
    final res = await DioHelper.getData(url: EndPoint.SQUADE, query: {
      'team': teamId,
    });

    if (res.statusCode == 200) {
      squadModel = SquadModel.fromJson(res.data);
      print(
          '=====================${squadModel!.response![0].players![0].name}');
      emit(GetSquadSuccessState());
    } else {
      print(res.statusMessage);
      emit(GetSquadErrorState());
    }
  }

  PlayerModel? playerModel;

  getPlayerInfo({required int playerId}) async {
    emit(GetPlayerInfoLoadingState());
    final res = await DioHelper.getData(url: EndPoint.PLAYERS, query: {
      'id': playerId,
      'season': 2023,
    });
    if (res.statusCode == 200) {
      playerModel = PlayerModel.fromJson(res.data);
      print('=====================${playerModel!.response![0].player!.name}');
      emit(GetPlayerInfoSuccessState());
    } else {
      print(res.statusMessage);
      emit(GetPlayerInfoErrorState());
    }
  }
}
