import 'dart:math';
import 'dart:io';

import 'package:network_plugin_go_ffi/protobuf/return.pb.dart';
import 'package:network_plugin_go_ffi/webrtc_plugin.dart';
import 'package:test/test.dart';

void main() {
  test('main', () {
    Directory.current = Directory("test");
    WebRTCPlugin.initialize(null, null);
    WebRTCExample.startSender();
    expect(true, isTrue);
  });
}

class WebRTCExample {
  static void startSender() {
    // 1. 创建会话
    // int sessionId = Random().nextInt(0x7FFFFFFF);
    int sessionId = 0;
    Return result;
    while (true) {
      result = WebRTCPlugin.createSession(sessionId);
      print("sessionId ${sessionId}");
      // print(result);
      // print(result.err.hasMessage());
      if (!result.err.hasMessage()) break;

      // if (!result.err.contains("ErrID")) {
      //   throw Exception("Fatal error: ${result.err}");
      // }
      sessionId = Random().nextInt(0x7FFFFFFF);
    }

    // 2. 获取offer
    while (true) {
      result = WebRTCPlugin.offer(sessionId);
      // print(result);

      if (!result.err.hasMessage()) break;

      // if (!result.err.contains("ErrWait")) {
      //   throw Exception("Fatal error: ${result.err}");
      // }
    }

    // 3. 打印offer
    String offerSDP = result.offerReturn.offerBase64;
    print("offer: $offerSDP");

    // 4. 读取answer
    print("input answer:");
    String? answerSDP = stdin.readLineSync();
    if (answerSDP == null) {
      throw Exception("Failed to read answer SDP");
    }

    result = WebRTCPlugin.confirmAnswer(sessionId, answerSDP);
    print(result);

    if (result.err.hasMessage()) {
      throw Exception("Fatal error: ${result.err}");
    }

    // 5. 发送数据
    while (true) {
      sleep(Duration(seconds: 2));
      String data = "Let's chat!";
      while (true) {
        result = WebRTCPlugin.send(sessionId, data, data.length);
        print(result);

        if (!result.err.hasMessage()) break;

        // if (!result.err.contains("ErrWait")) {
        //   throw Exception("Fatal error: ${result.err}");
        // }
      }
      print("send data: $data");
    }
  }
}