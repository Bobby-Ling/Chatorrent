import 'dart:convert';
import 'dart:io';

import 'package:network_plugin_go_ffi/protobuf/return.pb.dart';
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

    // test('Proto', () async {
    //   ReturnReady returnReady = ReturnReady.fromJson('{"ready_return":{"ready_list":[{"SessionID":1147089563,"data":"TGV0J3MgY2hhdCE="}]}}');
    //   print(returnReady.readylist[0].data);
    // });
    // test('Binding', () async {
    //   Response response;
    //   response = WebRTCPlugin.createSession(0);
    //   expect(response.toJsonString(), testResponse);
    //   response = WebRTCPlugin.offer(0);
    //   expect(response.toJsonString(), testResponse);
    //   response = WebRTCPlugin.joinSession(0, "");
    //   expect(response.toJsonString(), testResponse);
    //   response = WebRTCPlugin.answer(0);
    //   expect(response.toJsonString(), testResponse);
    //   response = WebRTCPlugin.confirmAnswer(0, "");
    //   expect(response.toJsonString(), testResponse);
    //   response = WebRTCPlugin.send(0, "", 0);
    //   expect(response.toJsonString(), testResponse);
    //   response = WebRTCPlugin.ready();
    //   expect(response.toJsonString(), testResponse);
    //   response = WebRTCPlugin.dropSession(0);
    //   expect(response.toJsonString(), testResponse);
    //   response = WebRTCPlugin.reloadConfig();
    //   expect(response.toJsonString(), testResponse);
    //   response = WebRTCPlugin.discard();
    //   expect(response.toJsonString(), testResponse);
    // });
    test('WebRTC', () async {
      Return returnValue = WebRTCPlugin.createSession(0);
      print(returnValue.createSessionReturn.toString());
    });
  });
}