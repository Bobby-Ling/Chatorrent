
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:chatorrent/schemas/server_config.dart';

class SettingsManager {
  static const String _keyUserId = 'userId';
  static const String _keyUsername = 'username';
  static const String _keyToken = 'token';
  static const String _keyServerConfig = 'serverConfig';

  static late final SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static int? getUserId() => _prefs.getInt(_keyUserId);
  static Future<void> setUserId(int? userId) async {
    if (userId == null) {
      await _prefs.remove(_keyUserId);
    } else {
      await _prefs.setInt(_keyUserId, userId);
    }
  }

  static String? getUsername() => _prefs.getString(_keyUsername);
  static Future<void> setUsername(String? username) async {
    if (username == null) {
      await _prefs.remove(_keyUsername);
    } else {
      await _prefs.setString(_keyUsername, username);
    }
  }

  static String? getToken() => _prefs.getString(_keyToken);
  static Future<void> setToken(String? token) async {
    if (token == null) {
      await _prefs.remove(_keyToken);
    } else {
      await _prefs.setString(_keyToken, token);
    }
  }

  static ServerConfig? getServerConfig() {
    final String? jsonStr = _prefs.getString(_keyServerConfig);
    if (jsonStr == null) return null;
    try {
      return ServerConfig.fromJson(json.decode(jsonStr));
    } catch (e) {
      return null;
    }
  }

  static Future<void> setServerConfig(ServerConfig? config) async {
    if (config == null) {
      await _prefs.remove(_keyServerConfig);
    } else {
      await _prefs.setString(_keyServerConfig, json.encode(config.toJson()));
    }
  }

  static Future<void> clearAll() async {
    await _prefs.clear();
  }
}