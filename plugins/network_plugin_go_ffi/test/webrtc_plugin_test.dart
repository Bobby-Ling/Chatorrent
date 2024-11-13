import 'dart:convert';
import 'dart:io';

import 'package:network_plugin_go_ffi/response_proto.dart';
import 'package:test/test.dart';
import 'package:network_plugin_go_ffi/webrtc_plugin.dart';

void main() {
  group('WebRTC Plugin Go Ffi Binding Test', () {

    final testResponse = jsonEncode({
      "error": {"code": 0, "err_str": "OK"},
      "session_id": 123,
      "data": "test_data"
    });

    setUp(() {
      Directory.current = Directory("test");
      print("currentPath: ${Directory.current.path}");
      WebRTCPlugin.initialize();
    });

    test('Binding', () async {
      Response response;
      response = WebRTCPlugin.createSession(0);
      expect(response.toJsonString(), testResponse);
      response = WebRTCPlugin.offer(0);
      expect(response.toJsonString(), testResponse);
      response = WebRTCPlugin.joinSession(0, "");
      expect(response.toJsonString(), testResponse);
      response = WebRTCPlugin.answer(0);
      expect(response.toJsonString(), testResponse);
      response = WebRTCPlugin.confirmAnswer(0, "");
      expect(response.toJsonString(), testResponse);
      response = WebRTCPlugin.send(0, "", 0);
      expect(response.toJsonString(), testResponse);
      response = WebRTCPlugin.ready();
      expect(response.toJsonString(), testResponse);
      response = WebRTCPlugin.dropSession(0);
      expect(response.toJsonString(), testResponse);
      response = WebRTCPlugin.reloadConfig();
      expect(response.toJsonString(), testResponse);
      response = WebRTCPlugin.discard();
      expect(response.toJsonString(), testResponse);
    });
  });
}