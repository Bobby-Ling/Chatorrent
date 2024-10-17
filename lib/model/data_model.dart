import 'package:flutter/material.dart' hide Row;
import 'package:sqlite3/sqlite3.dart';

import 'package:network_plugin_go_ffi/network_plugin_go_ffi.dart' as network_plugin_go_ffi;

class DataModel extends ChangeNotifier {
  late Database _database;

  String inputValue = '';

  DataModel() {
    _initDatabase();
  }

  // 初始化数据库并创建表
  void _initDatabase() {
    // 打开内存中的数据库（如果需要持久化，可以指定路径）
    _database = sqlite3.openInMemory();

    // 创建表，id 为主键并自增，data 存储字符串
    _database.execute('''
      CREATE TABLE IF NOT EXISTS data (
        id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
        content TEXT NOT NULL
      );
    ''');

    // 插入初始数据
    _insertInitialData();
  }

  // 插入初始数据
  void _insertInitialData() {
    final stmt = _database.prepare('INSERT INTO data (content) VALUES (?)');
    stmt
      ..execute(['Data 1'])
      ..execute(['Data 2'])
      ..execute(['Data 3']);
    stmt.dispose();

    notifyListeners();
  }

  // 按照索引获取数据（index 从 0 开始）
  String? getData(int index) {
    // 从数据库中查找对应索引的记录
    final resultSet =
        _database.select('SELECT content FROM data WHERE id = ?', [index + 1]);

    if (resultSet.isNotEmpty) {
      final row = resultSet.first;
      return row['content'] as String;
    }
    return null;
  }

  // 获取数据库中所有记录的数量
  int get length {
    final resultSet = _database.select('SELECT COUNT(*) FROM data');
    return resultSet.first['COUNT(*)'] as int;
  }

  void acceptData() {
    inputValue = inputValue.trim(); // Remove leading and trailing spaces
    if (inputValue.isNotEmpty) {
      String? value = inputValue;
      appendData(value);
      notifyListeners();
      inputValue = '';
    }
  }

  bool isValidUrl(String url) {
    const urlPattern = r"^(https?|ftp)://[^\s/$.?#].[^\s]*$";
    final regExp = RegExp(urlPattern);
    return regExp.hasMatch(url);
  }

  // 添加新数据
  void appendData(String content) {
    if (isValidUrl(content)) {
      content = network_plugin_go_ffi.getHTTPHeaderFirstLine(content);
    }
    final stmt = _database.prepare('INSERT INTO data (content) VALUES (?)');
    stmt.execute([content]);
    stmt.dispose();

    notifyListeners();
  }

  // 关闭数据库
  @override
  void dispose() {
    _database.dispose();
    super.dispose();
  }
}
