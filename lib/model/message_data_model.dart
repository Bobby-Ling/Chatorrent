import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sqlite3/sqlite3.dart';

class MessageDataModel extends ChangeNotifier {
  late Database _database;

  MessageDataModel() {
    debugPrint("MessageDataModel init");
    _startMessageInsertion();
    _initDatabase();
  }

  void _initDatabase() {
    _database = sqlite3.openInMemory();

    _database.execute('''
      CREATE TABLE IF NOT EXISTS messages (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        group_id INTEGER NOT NULL,
        content TEXT NOT NULL,
        timestamp TEXT NOT NULL
      );
    ''');

    _insertInitialData();
  }

  void _insertInitialData() {
    final stmt = _database.prepare(
      'INSERT INTO messages (group_id, content, timestamp) VALUES (?, ?, ?)',
    );

    stmt
      ..execute([1, 'Group 1', '2024-11-01 10:00:00(时间)'])
      ..execute([1, '消息1', '2024-11-01 10:00:01(时间)'])
      ..execute([1, '消息2', '2024-11-01 10:00:02(时间)'])
      ..execute([1, '消息3', '2024-11-01 10:00:03(时间)'])
      ..execute([1, '消息4', '2024-11-01 10:00:04(时间)'])
      ..execute([1, '消息5', '2024-11-01 10:00:05(时间)'])
      ..execute([1, '消息6', '2024-11-01 10:00:06(时间)'])
      ..execute([1, '消息7', '2024-11-01 10:00:07(时间)'])
      ..execute([1, '消息8', '2024-11-01 10:00:08(时间)'])
      ..execute([1, '消息9', '2024-11-01 10:00:09(时间)'])
      ..execute([1, '消息10', '2024-11-01 10:00:10(时间)'])
      ..execute([1, '消息11', '2024-11-01 10:00:11(时间)'])
      ..execute([2, 'Group 2', '2024-11-01 10:00:00(时间)'])
      ..execute([2, '消息1', '2024-11-01 10:00:00(时间)'])
      ..execute([2, '消息2', '2024-11-01 10:00:00(时间)'])
      ..execute([3, 'Group 3', '2024-11-01 10:00:00(时间)'])
      ..execute([3, '消息1', '2024-11-01 10:00:00(时间)'])
      ..execute([3, '消息2', '2024-11-01 10:00:00(时间)']);

    stmt.dispose();
    notifyListeners();
  }

  List<Map<String, dynamic>> getMessagesForGroup(int groupId) {
    final resultSet = _database.select(
      'SELECT content, timestamp FROM messages WHERE group_id = ? ORDER BY timestamp',
      [groupId],
    );

    return resultSet.map((row) {
      return {
        'content': row['content'] as String,
        'timestamp': row['timestamp'] as String,
      };
    }).toList();
  }

  void addMessage(int groupId, String content) {
    final timestamp = DateTime.now().toIso8601String();
    final stmt = _database.prepare(
      'INSERT INTO messages (group_id, content, timestamp) VALUES (?, ?, ?)',
    );
    stmt.execute([groupId, content, timestamp]);
    stmt.dispose();

    notifyListeners();
  }

  // ignore: unused_field
  Timer? _timer;
  int _messageCounter = 0;

  void _startMessageInsertion() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _insertMessage();
    });
  }

  void _insertMessage() {
    _messageCounter++;
    String content = "Message $_messageCounter";
    String timestamp = DateTime.now().toIso8601String();

    final stmt = _database.prepare(
        'INSERT INTO messages (group_id, content, timestamp) VALUES (?, ?, ?)');
    stmt.execute([1, content, timestamp]);
    stmt.dispose();

    notifyListeners();
  }

  @override
  void dispose() {
    debugPrint("MessageDataModel disposed!");
    _database.dispose();
    super.dispose();
  }
}
