part of 'app_cubit.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}

class GetLeaguesLoadingState extends AppState {}

class GetLeaguesSuccessState extends AppState {}

class GetLeaguesErrorState extends AppState {
  final String error;

  GetLeaguesErrorState({required this.error});
}

class ChangeLeaguesSuccessState extends AppState {}

class ChangeCarouselIndexSuccessState extends AppState {}

class GetFixturesLoadingState extends AppState {}

class GetFixturesSuccessState extends AppState {
  final FixtureModel model;

  GetFixturesSuccessState({required this.model});
}

class GetFixturesErrorState extends AppState {}

class GetLiveMatchesLoadingState extends AppState {}

class GetLiveMatchesSuccessState extends AppState {}

class GetLiveMatchesErrorState extends AppState {}

class AppChangeButtonNavBarStates extends AppState {}
