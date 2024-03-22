import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/features/layout/data/models/FixtureModel.dart';
import 'package:meringiii/features/layout/data/models/LeaguesModel.dart';
import 'package:meringiii/features/layout/domain/usecases/get_fixture.dart';
import 'package:meta/meta.dart';
import '../../competitions/presentation/screens/competitions_screen.dart';
import '../domain/usecases/get_all_leagues.dart';
import '../domain/usecases/live_match.dart';
import '../presentation/screens/main_screen.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  final GetAllLeaguesUseCase getAllLeaguesUseCase;
  final GetFixtureUseCase getFixtureUseCase;
  final LiveMatchUseCase liveMatchUseCase;

  AppCubit(
      {required this.getAllLeaguesUseCase,
      required this.getFixtureUseCase,
      required this.liveMatchUseCase})
      : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentNavIndex = 0;

  void changeNavButton(int index) {
    currentNavIndex = index;
    emit(AppChangeButtonNavBarStates());
  }

  List<Widget> screens = [
    const MainScreen(),
    const CompetitionsScreen(),
  ];

  List<LeagueData> topLeagues = [];

  void getAllLeagues() async {
    emit(GetLeaguesLoadingState());
    topLeagues = [];
    final failureOrSuccess = await getAllLeaguesUseCase.call();
    failureOrSuccess.fold(
        (failure) => emit(GetLeaguesErrorState(error: failure.getMessage())),
        (success) {
      topLeagues = success;
      print(topLeagues.length);
      emit(GetLeaguesSuccessState());
    });
  }

  FixtureModel? fixtureModel;

  void getFixture({required num leagueId}) async {
    emit(GetFixturesLoadingState());
    final failureOrSuccess = await getFixtureUseCase.call(leagueId: leagueId);
    failureOrSuccess.fold((failure) => emit(GetFixturesErrorState()),
        (success) {
      fixtureModel = success;
      emit(GetFixturesSuccessState(model: success));
    });
  }

  int selectedIndex = -1;

  void changeIndex(int index) {
    selectedIndex = index;
    emit(ChangeLeaguesSuccessState());
  }

  FixtureModel? liveModel;

  void liveMatch() async {
    emit(GetLiveMatchesLoadingState());
    final failureOrSuccess = await liveMatchUseCase.call();
    failureOrSuccess.fold((failure) => emit(GetLiveMatchesErrorState()),
        (success) {
      liveModel = success;
      print(liveModel!.response!.length.toString());
      emit(GetLiveMatchesSuccessState());
    });
  }
}
