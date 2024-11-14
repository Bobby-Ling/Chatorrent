// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IceServer _$IceServerFromJson(Map<String, dynamic> json) => IceServer(
      urls: (json['urls'] as List<dynamic>).map((e) => e as String).toList(),
      username: json['username'] as String?,
      credential: json['credential'] as String?,
    );

Map<String, dynamic> _$IceServerToJson(IceServer instance) => <String, dynamic>{
      'urls': instance.urls,
      'username': instance.username,
      'credential': instance.credential,
    };

WebRTCConfig _$WebRTCConfigFromJson(Map<String, dynamic> json) => WebRTCConfig(
      iceServers: (json['iceServers'] as List<dynamic>)
          .map((e) => IceServer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WebRTCConfigToJson(WebRTCConfig instance) =>
    <String, dynamic>{
      'iceServers': instance.iceServers,
    };

ServerEndpoint _$ServerEndpointFromJson(Map<String, dynamic> json) =>
    ServerEndpoint(
      host: json['host'] as String,
      port: json['port'] as String,
      useSsl: json['useSsl'] as bool,
    );

Map<String, dynamic> _$ServerEndpointToJson(ServerEndpoint instance) =>
    <String, dynamic>{
      'host': instance.host,
      'port': instance.port,
      'useSsl': instance.useSsl,
    };

ServerConfig _$ServerConfigFromJson(Map<String, dynamic> json) => ServerConfig(
      webrtc: WebRTCConfig.fromJson(json['webrtc'] as Map<String, dynamic>),
      signalServer:
          ServerEndpoint.fromJson(json['signalServer'] as Map<String, dynamic>),
      chatServer:
          ServerEndpoint.fromJson(json['chatServer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ServerConfigToJson(ServerConfig instance) =>
    <String, dynamic>{
      'webrtc': instance.webrtc,
      'signalServer': instance.signalServer,
      'chatServer': instance.chatServer,
    };
