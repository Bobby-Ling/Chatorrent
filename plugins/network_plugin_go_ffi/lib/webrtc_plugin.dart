import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
// for toNativeUtf8
import 'package:ffi/ffi.dart';

import 'package:network_plugin_go_ffi/protobuf/return.pb.dart';
import 'network_plugin_go_ffi_bindings_generated.dart';

class WebRTCPlugin {
  static const String _libName = 'network_plugin_go_ffi';

  static const String _defaultConfigJson = """
    {
        "webrtc": {
          "iceServers": [
            {
              "urls": [
                "stun:stun.l.google.com:19302",
                "stun:stun.l.google.com:5349",
                "stun:stun1.l.google.com:3478",
                "stun:stun1.l.google.com:5349",
                "stun:stun2.l.google.com:19302",
                "stun:stun2.l.google.com:5349",
                "stun:stun3.l.google.com:3478",
                "stun:stun3.l.google.com:5349",
                "stun:stun4.l.google.com:19302",
                "stun:stun4.l.google.com:5349"
              ]
            }
          ]
        },
        "cache": 1000,
        "lifecycle": 600
      }
    """;

  /// The dynamic library in which the symbols for [NetworkPluginGoFfiBindings] can be found.
  static DynamicLibrary get _dylib {
    if (Platform.isMacOS || Platform.isIOS) {
      return DynamicLibrary.open('lib_$_libName.framework/$_libName');
    }
    if (Platform.isAndroid || Platform.isLinux) {
      return DynamicLibrary.open('lib_$_libName.so');
    }
    if (Platform.isWindows) {
      return DynamicLibrary.open('lib_$_libName.dll');
    }
    throw UnsupportedError('Unknown platform: ${Platform.operatingSystem}');
  }

  static NetworkPluginGoFfiBindings? _bindings;

  // 可为空, 这时使用默认值
  static void initialize([DynamicLibrary? library, String? configJson]) {
    // library为空时使用_dylib
    _bindings = NetworkPluginGoFfiBindings(library ?? _dylib);
    WebRTCPlugin.initWebRTC(configJson ?? _defaultConfigJson);
  }

  static NetworkPluginGoFfiBindings get bindings {
    if (_bindings == null) {
      throw StateError('NetworkPluginGoFfiWrapper not initialized. Call initialize() first.');
    }
    return _bindings!;
  }

  static void initWebRTC(String configJson) {
    Pointer<Char> configJsonPtr = configJson.toNativeUtf8().cast<Char>();
    bindings.InitWebRTC(configJsonPtr);
  }

  static Return createSession(int sessionId) {
    Pointer<Utf8> result = bindings.CreateSession(sessionId).cast<Utf8>();
    String dartString = result.toDartString();
    // result需要由调用方手动释放
    bindings.freeCString(result.cast<Char>());
    return Return.fromBuffer(base64.decode(dartString));
  }

  static Return offer(int sessionId) {
    Pointer<Utf8> result = bindings.Offer(sessionId).cast<Utf8>();
    String dartString = result.toDartString();
    bindings.freeCString(result.cast<Char>());
    return Return.fromBuffer(base64.decode(dartString));
  }

  static Return joinSession(int sessionId, String sdpBase64) {
    Pointer<Char> sdpPtr = sdpBase64.toNativeUtf8().cast<Char>();
    Pointer<Utf8> result = bindings.JoinSession(sessionId, sdpPtr).cast<Utf8>();
    String dartString = result.toDartString();
    bindings.freeCString(result.cast<Char>());
    calloc.free(sdpPtr);
    return Return.fromBuffer(base64.decode(dartString));
  }

  static Return answer(int sessionId) {
    Pointer<Utf8> result = bindings.Answer(sessionId).cast<Utf8>();
    String dartString = result.toDartString();
    bindings.freeCString(result.cast<Char>());
    return Return.fromBuffer(base64.decode(dartString));
  }

  static Return confirmAnswer(int sessionId, String sdpBase64) {
    Pointer<Char> sdpPtr = sdpBase64.toNativeUtf8().cast<Char>();
    Pointer<Utf8> result = bindings.ConfirmAnswer(sessionId, sdpPtr).cast<Utf8>();
    String dartString = result.toDartString();
    bindings.freeCString(result.cast<Char>());
    calloc.free(sdpPtr);
    return Return.fromBuffer(base64.decode(dartString));
  }

  static Return send(int sessionId, String data, int size) {
    Pointer<Char> dataPtr = data.toNativeUtf8().cast<Char>();
    Pointer<Utf8> result = bindings.Send(sessionId, dataPtr, size).cast<Utf8>();
    String dartString = result.toDartString();
    bindings.freeCString(result.cast<Char>());
    calloc.free(dataPtr);
    return Return.fromBuffer(base64.decode(dartString));
  }

  static Return ready() {
    Pointer<Utf8> result = bindings.Ready().cast<Utf8>();
    String dartString = result.toDartString();
    bindings.freeCString(result.cast<Char>());
    return Return.fromBuffer(base64.decode(dartString));
  }

  static Return dropSession(int sessionId) {
    Pointer<Utf8> result = bindings.DropSession(sessionId).cast<Utf8>();
    String dartString = result.toDartString();
    bindings.freeCString(result.cast<Char>());
    return Return.fromBuffer(base64.decode(dartString));
  }

  static Return reloadConfig([String? configJson]) {
    Pointer<Char> configJsonPtr = (configJson ?? _defaultConfigJson).toNativeUtf8().cast<Char>();
    Pointer<Utf8> result = bindings.ReloadConfig(configJsonPtr).cast<Utf8>();
    String dartString = result.toDartString();
    bindings.freeCString(result.cast<Char>());
    return Return.fromBuffer(base64.decode(dartString));
  }

  static Return discard() {
    Pointer<Utf8> result = bindings.Discard().cast<Utf8>();
    String dartString = result.toDartString();
    bindings.freeCString(result.cast<Char>());
    return Return.fromBuffer(base64.decode(dartString));
  }

  static void registerCallback(Pointer<Void> binop) {
    bindings.registerCallback(binop);
  }
}