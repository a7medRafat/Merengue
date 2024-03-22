import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:meringiii/core/API/api_services.dart';
import 'package:meringiii/core/local_storage/fixtures.dart';
import 'package:meringiii/core/local_storage/local_storage.dart';
import 'package:meringiii/core/network/network_info.dart';
import 'package:meringiii/features/layout/data/datasources/layout_local_data_source.dart';
import 'package:meringiii/features/layout/data/datasources/layout_remote_data_source.dart';
import 'package:meringiii/features/layout/data/repositories/layout_repository_impl.dart';
import 'package:meringiii/features/layout/domain/repositories/layout_repository.dart';
import 'package:meringiii/features/layout/domain/usecases/get_all_leagues.dart';
import 'package:meringiii/features/layout/domain/usecases/get_fixture.dart';
import 'package:meringiii/features/layout/domain/usecases/live_match.dart';
import '../features/layout/cubit/app_cubit.dart';

GetIt sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<AppCubit>(
      () => AppCubit(getAllLeaguesUseCase: sl(), getFixtureUseCase: sl(), liveMatchUseCase: sl()));


  sl.registerLazySingleton(() => LiveMatchUseCase(layoutRepository: sl()));
  sl.registerLazySingleton(() => GetFixtureUseCase(layoutRepository: sl()));

  sl.registerLazySingleton<GetAllLeaguesUseCase>(
      () => GetAllLeaguesUseCase(layoutRepository: sl()));

  sl.registerLazySingleton<LayoutRepository>(
      () => LayoutRepositoryImpl(remoteDataSource: sl(), networkInfo: sl(), localDataSource: sl()));

  sl.registerLazySingleton<LayoutRemoteDataSource>(
      () => LayoutRemoteDataSourceImpl(apiServices: sl()));

  sl.registerLazySingleton<LayoutLocalDataSource>(() => LayoutLocalDataSourceImpl());

  sl.registerLazySingleton<LocalStorage>(() => LocalFixtures());
  sl.registerLazySingleton<LocalFixtures>(() => LocalFixtures());

  sl.registerLazySingleton<ApiServices>(() => ApiServicesImpl(localFixture: sl()));

  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: sl()));

  sl.registerLazySingleton(() => InternetConnectionChecker());


}
