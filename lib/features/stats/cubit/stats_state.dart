part of 'stats_cubit.dart';

@immutable
abstract class StatsState {}

class StatsInitial extends StatsState {}

class GetStatsLoadingState extends StatsState {}

class GetStatsSuccessState extends StatsState {}

class GetStatsErrorState extends StatsState {}

class GetLineupLoadingState extends StatsState {}

class GetLineupSuccessState extends StatsState {}

class GetLineupErrorState extends StatsState {}

class ChangeTopicSuccessState extends StatsState {}
