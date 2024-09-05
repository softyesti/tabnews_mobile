import 'package:hive/hive.dart';

abstract class StorageDriver {
  Future<List<Map<String, dynamic>>> getAll(String box);
  Future<Map<String, dynamic>?> getOne(String box, String key);
  Future<void> create(String box, String key, Map<String, dynamic> data);
  Future<void> update(String box, String key, Map<String, dynamic> data);
  Future<void> delete(String box, String key);
}

class StorageDriverImpl implements StorageDriver {
  StorageDriverImpl({required this.collection});

  final BoxCollection collection;

  static Future<StorageDriverImpl> initialize(
    String name,
    Set<String> boxes, {
    required String path,
  }) async {
    final collection = await BoxCollection.open(name, boxes, path: path);
    return StorageDriverImpl(collection: collection);
  }

  @override
  Future<List<Map<String, dynamic>>> getAll(String box) async {
    final opened = await _openBox(box);
    final data = await opened.getAllValues();
    return data.values.map((value) => value.cast<String, dynamic>()).toList();
  }

  @override
  Future<Map<String, dynamic>?> getOne(String box, String key) async {
    final opened = await _openBox(box);
    final data = await opened.get(key);
    return data?.cast();
  }

  @override
  Future<void> create(String box, String key, Map<String, dynamic> data) async {
    final opened = await _openBox(box);
    await opened.put(key, data);
  }

  @override
  Future<void> update(String box, String key, Map<String, dynamic> data) async {
    final opened = await _openBox(box);

    var newData = data;
    final oldData = await getOne(box, key);
    if (oldData != null) newData = {...oldData, ...data};

    await opened.put(key, newData);
  }

  @override
  Future<void> delete(String box, String key) async {
    final opened = await _openBox(box);
    await opened.delete(key);
  }

  Future<CollectionBox<Map<dynamic, dynamic>>> _openBox(String name) async {
    final box = await collection.openBox<Map<dynamic, dynamic>>(name);
    return box;
  }
}
