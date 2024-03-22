import 'package:hive/hive.dart';
import 'package:meringiii/features/layout/data/models/FixtureModel.dart';

import 'hive_keys.dart';
import 'local_storage.dart';

class LocalFixtures implements LocalStorage<FixtureModel> {
  static Box<FixtureModel>? _box;

  @override
  Future<void> init() async {
    _box = await Hive.openBox(HiveKeys.Fixture);
  }

  @override
  FixtureModel? getData({required String id}) => _box!.get(id);

  @override
  Future<void> saveData(
      {required String id, required FixtureModel data}) async {
    await _box!.put(id, data);

  }

  @override
  Future<void> deleteData({required String id}) async {
    await _box!.delete(id);
  }
}
