import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';
import 'App/bloc_observer.dart';
import 'App/myapp.dart';
import 'core/dio_helper/dio_helper.dart';
import 'app/injuctoin_container.dart' as di;
import 'core/local_storage/fixtures.dart';
import 'core/shared_preferances/cache_helper.dart';
import 'features/layout/data/models/FixtureModel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await Hive.initFlutter();
  Hive.registerAdapter(FixtureModelAdapter());
  await LocalFixtures().init();
  await di.init();
  await CacheHelper.init();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(const MyApp());

}
