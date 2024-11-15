// test/response_test.dart
import 'package:network_plugin_go_ffi/response_proto.dart';
import 'package:test/test.dart';
import 'dart:convert';

void main() {
  group('Response', () {
    test('fromJson creates correct object', () {
      final jsonObj = {
        'error': {'code': 0, 'err_str': 'OK'},
        'session_id': 123,
        'data': 'test_data'
      };
      final jsonString = json.encode(jsonObj);

      final response = Response.fromJsonString(jsonString);
      print(jsonString);

      expect(response.sessionId, equals(123));
      expect(response.data, equals('test_data'));
      expect(response.error.code, equals(0));
      expect(response.error.errStr, "OK");
    });

    test('isSuccess works correctly', () {
      const successResponse = Response(
        error: ErrorInfo(code: 0, errStr: ''),
        sessionId: 1,
        data: 'data'
      );

      const errorResponse = Response(
        error: ErrorInfo(code: 1, errStr: 'error'),
        sessionId: 0,
        data: ''
      );

      expect(successResponse.isSuccess, isTrue);
      expect(errorResponse.isSuccess, isFalse);
    });
  });
}