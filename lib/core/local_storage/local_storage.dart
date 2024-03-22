abstract class LocalStorage<Type>{
  Future<void> init();

  Future<void> saveData({required String id, required Type data});

  Future<void> deleteData({required String id});

  Type? getData({required String id});
}