import 'package:flutter/material.dart' hide Row;
import 'package:sqlite3/sqlite3.dart';

class GroupChatDataModel extends ChangeNotifier {
  late Database _database;

  String inputValue = '';

  GroupChatDataModel() {
    _initDatabase();
  }

  void _initDatabase() {
    _database = sqlite3.openInMemory();

    _database.execute('''
      CREATE TABLE IF NOT EXISTS group_chats (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        group_name TEXT NOT NULL,
        last_message TEXT,
        timestamp TEXT
      );
    ''');

    _insertInitialGroupChats();
  }

  void _insertInitialGroupChats() {
    final stmt = _database.prepare(
        'INSERT INTO group_chats (group_name, last_message, timestamp) VALUES (?, ?, ?)');
    stmt
      ..execute(['群聊1', '最新信息1', '10:30 AM(时间)'])
      ..execute(['群聊2', '最新信息2', 'Yesterday(时间)'])
      ..execute(['群聊3', '最新信息3', 'Oct 28(时间)']);
    stmt.dispose();

    notifyListeners();
  }

  List<Map<String, dynamic>> getGroupChats() {
    final resultSet = _database.select('SELECT * FROM group_chats');
    return resultSet
        .map((row) => {
              'group_name': row['group_name'] as String,
              'last_message': row['last_message'] as String,
              'timestamp': row['timestamp'] as String,
              'id': row['id'] as int,
            })
        .toList();
  }

  void addGroupChat(String groupName) {
    final stmt =
        _database.prepare('INSERT INTO group_chats (group_name) VALUES (?)');
    stmt.execute([groupName]);
    stmt.dispose();

    notifyListeners();
  }

  void updateLastMessage(int id, String lastMessage, String timestamp) {
    final stmt = _database.prepare(
        'UPDATE group_chats SET last_message = ?, timestamp = ? WHERE id = ?');
    stmt.execute([lastMessage, timestamp, id]);
    stmt.dispose();

    notifyListeners();
  }

  @override
  void dispose() {
    _database.dispose();
    super.dispose();
  }
}
