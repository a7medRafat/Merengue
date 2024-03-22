import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/core/dio_helper/dio_helper.dart';
import 'package:meringiii/core/dio_helper/end_points.dart';
import 'package:meta/meta.dart';
import '../data/models/LineupModel.dart';
import '../data/models/StatsModel.dart';
import '../presentation/widgets/Lineups/lineup.dart';
import '../presentation/widgets/players_statistics/players_stats.dart';
import '../presentation/widgets/Stats/stats_list.dart';

part 'stats_state.dart';

class StatsCubit extends Cubit<StatsState> {
  StatsCubit() : super(StatsInitial());

  static StatsCubit get(context) => BlocProvider.of(context);

  StatsModel? statsModel;

  void getStats({required fixId}) async {
    emit(GetStatsLoadingState());
    final res = await DioHelper.getData(url: EndPoint.STATS, query: {
      'fixture': fixId,
    });

    if (res.statusCode == 200) {
      statsModel = StatsModel.fromJson(res.data);
      print('=====================');
      print(statsModel!.response!.length);
      emit(GetStatsSuccessState());
    } else {
      print(res.statusMessage);
      emit(GetStatsErrorState());
    }
  }

  LineupModel? lineupModel;

  void getLineup({required fixId}) async {
    emit(GetLineupLoadingState());
    final res = await DioHelper.getData(url: EndPoint.STATS, query: {
      'fixture': fixId,
    });

    if (res.statusCode == 200) {
      lineupModel = LineupModel.fromJson(res.data);
      print('lineup =====================');
      print(lineupModel!.response![0].coach!.name);
      emit(GetLineupSuccessState());
    } else {
      print(res.statusMessage);
      emit(GetLineupErrorState());
    }
  }

  double converter(
      {required dynamic homeValue,
      required dynamic awayValue,
      required bool isHome}) {

    var home = homeValue == 'null' ? 0 : double.parse(homeValue.toString().replaceAll('%', ''));
    var away = awayValue == 'null'  ? 0 : double.parse(awayValue.toString().replaceAll('%', ''));

    var total = home + away;

    if (isHome) {
      return home / total;
    } else {
      return away / total;
    }
  }

  int selectedTopic = -1;
  List<String> topicsName = [
    'Stats',
    'Line-up',
    'players',
  ];
  List<Widget> topics = [
    const StatsList(),
    const Lineup(),
    const PlayersStats()
  ];

  void changeTopicIndex(int index) {
    selectedTopic = index;
    print(selectedTopic);
    emit(ChangeTopicSuccessState());
  }
}
