// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_proto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorInfo _$ErrorInfoFromJson(Map<String, dynamic> json) => ErrorInfo(
      code: (json['code'] as num).toInt(),
      errStr: json['err_str'] as String,
    );

Map<String, dynamic> _$ErrorInfoToJson(ErrorInfo instance) => <String, dynamic>{
      'code': instance.code,
      'err_str': instance.errStr,
    };

Response _$ResponseFromJson(Map<String, dynamic> json) => Response(
      error: ErrorInfo.fromJson(json['error'] as Map<String, dynamic>),
      sessionId: (json['session_id'] as num).toInt(),
      data: json['data'] as String,
    );

Map<String, dynamic> _$ResponseToJson(Response instance) => <String, dynamic>{
      'error': instance.error,
      'session_id': instance.sessionId,
      'data': instance.data,
    };
