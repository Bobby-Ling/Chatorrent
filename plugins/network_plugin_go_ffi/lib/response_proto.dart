// response.dart
import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'response_proto.g.dart';

// dart run build_runner build
// dart run build_runner watch 自动监听文件变化

@JsonSerializable()
class ErrorInfo {
  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'err_str')
  final String errStr;

  const ErrorInfo({
    required this.code,
    required this.errStr,
  });

  factory ErrorInfo.fromJson(Map<String, dynamic> json) =>
      _$ErrorInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorInfoToJson(this);
}

@JsonSerializable()
class Response {
  @JsonKey(name: 'error')
  final ErrorInfo error;

  @JsonKey(name: 'session_id')
  final int sessionId;

  @JsonKey(name: 'data')
  final String data;

  const Response({
    required this.error,
    required this.sessionId,
    required this.data,
  });

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);

  factory Response.fromJsonString(String jsonString) {
    final Map<String, dynamic> json = jsonDecode(jsonString);
    return Response.fromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResponseToJson(this);

  String toJsonString() => jsonEncode(toJson());
}

// 扩展方法
extension ResponseExtension on Response {
  bool get isSuccess => error.code == 0;
  String get errorMessage => error.errStr;

  T fold<T>({
    required T Function(String data) onSuccess,
    required T Function(String errorMessage) onError,
  }) {
    return isSuccess ? onSuccess(data) : onError(errorMessage);
  }
}