part of 'competition_cubit.dart';

@immutable
abstract class CompetitionState {}

class CompetitionInitial extends CompetitionState {}

class GetStandingsLoadingState extends CompetitionState {}

class GetStandingsErrorState extends CompetitionState {}

class GetStandingsSuccessState extends CompetitionState {}

class GetLeagueSuccessState extends CompetitionState {}

class GetTeamLoadingState extends CompetitionState {}

class GetTeamErrorState extends CompetitionState {}

class GetTeamSuccessState extends CompetitionState {}

class GetSquadLoadingState extends CompetitionState {}

class GetSquadErrorState extends CompetitionState {}

class GetSquadSuccessState extends CompetitionState {}

class GetPlayerInfoLoadingState extends CompetitionState {}

class GetPlayerInfoErrorState extends CompetitionState {}

class GetPlayerInfoSuccessState extends CompetitionState {}