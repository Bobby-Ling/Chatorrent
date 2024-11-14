// lib/models/server_config.dart
import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'server_config.g.dart';

@JsonSerializable()
class IceServer {
  final List<String> urls;
  final String? username;
  final String? credential;

  IceServer({
    required this.urls,
    this.username,
    this.credential,
  });

  factory IceServer.fromJson(Map<String, dynamic> json) =>
      _$IceServerFromJson(json);

  Map<String, dynamic> toJson() => _$IceServerToJson(this);
}

@JsonSerializable()
class WebRTCConfig {
  final List<IceServer> iceServers;

  WebRTCConfig({
    required this.iceServers,
  });

  factory WebRTCConfig.fromJson(Map<String, dynamic> json) =>
      _$WebRTCConfigFromJson(json);

  Map<String, dynamic> toJson() => _$WebRTCConfigToJson(this);
}

@JsonSerializable()
class ServerEndpoint {
  final String host;
  final String port;
  final bool useSsl;

  ServerEndpoint({
    required this.host,
    required this.port,
    required this.useSsl,
  });

  factory ServerEndpoint.fromJson(Map<String, dynamic> json) =>
      _$ServerEndpointFromJson(json);

  Map<String, dynamic> toJson() => _$ServerEndpointToJson(this);
}

@JsonSerializable()
class ServerConfig {
  final WebRTCConfig webrtc;
  final ServerEndpoint signalServer;
  final ServerEndpoint chatServer;

  ServerConfig({
    required this.webrtc,
    required this.signalServer,
    required this.chatServer,
  });

  static ServerConfig fromJsonString(String jsonStr) {
    final Map<String, dynamic> json = jsonDecode(jsonStr);
    return ServerConfig.fromJson(json);
  }

  factory ServerConfig.fromJson(Map<String, dynamic> json) =>
      _$ServerConfigFromJson(json);

  Map<String, dynamic> toJson() => _$ServerConfigToJson(this);

  String toJsonString() => jsonEncode(toJson());
}