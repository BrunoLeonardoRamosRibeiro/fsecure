import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final _storage = FlutterSecureStorage();

  Future write(String key, value) async {
    var writeData = await _storage.write(key: key, value: value);
    return writeData;
  }

  Future read(String key) async {
    var readData = await _storage.read(key: key);
    return readData;
  }

  Future delete (String key) async {
    var deleteData = await _storage.delete(key: key);
    return deleteData;
  }

  Future <bool> checkIfExists(String key) async {
    var exists = await _storage.containsKey(key: key);
    return exists;
  }

}