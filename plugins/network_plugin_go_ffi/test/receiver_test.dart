import 'dart:convert';
import 'dart:math';
import 'dart:io';

import 'package:network_plugin_go_ffi/protobuf/return.pb.dart';
import 'package:network_plugin_go_ffi/webrtc_plugin.dart';
import 'package:test/test.dart';

void main() {
  test('main', () {
    Directory.current = Directory("test");
    WebRTCPlugin.initialize(null, null);
    WebRTCExample.startReceiver();
    expect(true, isTrue);
  });
}

class WebRTCExample {
  static Future<void> startReceiver() async {
    // 1. 加入会话
    print("input offerSDP:");
    String? offerSDP = stdin.readLineSync();
    // String? offerSDP = await readLongString();
    if (offerSDP == null) {
      throw Exception("Failed to read offer SDP");
    }

    // int sessionId = Random().nextInt(0x7FFFFFFF);
    int sessionId = 0;
    Return result;

    while (true) {
      result = WebRTCPlugin.joinSession(sessionId, offerSDP);
      // print("result: $result");

      if (!result.err.hasMessage()) break;

      // if (!result.err.contains("ErrID")) {
      //   throw Exception("Fatal error: ${result.err}");
      // }
      // sessionId = Random().nextInt(0x7FFFFFFF);
    }

    // 2. 获取answer
    while (true) {
      result = WebRTCPlugin.answer(sessionId);
      // print("result: $result");

      if (!result.err.hasMessage()) break;

      // if (!result.err.contains("ErrWait")) {
      //   throw Exception("Fatal error: ${result.err}");
      // }
    }

    String answerSDP = result.answerReturn.answerBase64;
    print("answer: $answerSDP");

    // 3. 接收数据
    while (true) {
      sleep(Duration(seconds: 2));
      while (true) {
        result = WebRTCPlugin.ready();
        print(result);

        if (!result.err.hasMessage()) break;

        // if (!result.err.contains("ErrWait")) {
        //   throw Exception("Fatal error: ${result.err}");
        // }
      }

      for (var ready in result.readyReturn.readyList) {
        print("get message: ${ready.sessionID} ${String.fromCharCodes(ready.dAtA)}");
      }
    }
  }
}