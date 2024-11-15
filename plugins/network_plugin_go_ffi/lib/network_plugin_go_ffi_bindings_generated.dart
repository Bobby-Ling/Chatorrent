// ignore_for_file: always_specify_types
// ignore_for_file: camel_case_types
// ignore_for_file: non_constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

/// Bindings for `src/network_plugin_go_ffi.h`.
///
/// Regenerate bindings with `dart run ffigen --config ffigen.yaml`.
///
class NetworkPluginGoFfiBindings {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  NetworkPluginGoFfiBindings(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  NetworkPluginGoFfiBindings.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void InitWebRTC(
    ffi.Pointer<ffi.Char> Config,
  ) {
    return _InitWebRTC(
      Config,
    );
  }

  late final _InitWebRTCPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Char>)>>(
          'InitWebRTC');
  late final _InitWebRTC =
      _InitWebRTCPtr.asFunction<void Function(ffi.Pointer<ffi.Char>)>();

  ffi.Pointer<ffi.Char> CreateSession(
    int SessionID,
  ) {
    return _CreateSession(
      SessionID,
    );
  }

  late final _CreateSessionPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function(ffi.Int)>>(
          'CreateSession');
  late final _CreateSession =
      _CreateSessionPtr.asFunction<ffi.Pointer<ffi.Char> Function(int)>();

  ffi.Pointer<ffi.Char> Offer(
    int SessionID,
  ) {
    return _Offer(
      SessionID,
    );
  }

  late final _OfferPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function(ffi.Int)>>(
          'Offer');
  late final _Offer =
      _OfferPtr.asFunction<ffi.Pointer<ffi.Char> Function(int)>();

  ffi.Pointer<ffi.Char> JoinSession(
    int SessionID,
    ffi.Pointer<ffi.Char> sdpBase64,
  ) {
    return _JoinSession(
      SessionID,
      sdpBase64,
    );
  }

  late final _JoinSessionPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Int, ffi.Pointer<ffi.Char>)>>('JoinSession');
  late final _JoinSession = _JoinSessionPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(int, ffi.Pointer<ffi.Char>)>();

  ffi.Pointer<ffi.Char> Answer(
    int SessionID,
  ) {
    return _Answer(
      SessionID,
    );
  }

  late final _AnswerPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function(ffi.Int)>>(
          'Answer');
  late final _Answer =
      _AnswerPtr.asFunction<ffi.Pointer<ffi.Char> Function(int)>();

  ffi.Pointer<ffi.Char> ConfirmAnswer(
    int SessionID,
    ffi.Pointer<ffi.Char> sdpBase64,
  ) {
    return _ConfirmAnswer(
      SessionID,
      sdpBase64,
    );
  }

  late final _ConfirmAnswerPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Int, ffi.Pointer<ffi.Char>)>>('ConfirmAnswer');
  late final _ConfirmAnswer = _ConfirmAnswerPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(int, ffi.Pointer<ffi.Char>)>();

  ffi.Pointer<ffi.Char> Send(
    int SessionID,
    ffi.Pointer<ffi.Char> data,
    int size,
  ) {
    return _Send(
      SessionID,
      data,
      size,
    );
  }

  late final _SendPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Int, ffi.Pointer<ffi.Char>, ffi.Int)>>('Send');
  late final _Send = _SendPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(int, ffi.Pointer<ffi.Char>, int)>();

  ffi.Pointer<ffi.Char> Ready() {
    return _Ready();
  }

  late final _ReadyPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function()>>('Ready');
  late final _Ready = _ReadyPtr.asFunction<ffi.Pointer<ffi.Char> Function()>();

  ffi.Pointer<ffi.Char> DropSession(
    int SessionID,
  ) {
    return _DropSession(
      SessionID,
    );
  }

  late final _DropSessionPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function(ffi.Int)>>(
          'DropSession');
  late final _DropSession =
      _DropSessionPtr.asFunction<ffi.Pointer<ffi.Char> Function(int)>();

  ffi.Pointer<ffi.Char> ReloadConfig(
    ffi.Pointer<ffi.Char> ConfJson,
  ) {
    return _ReloadConfig(
      ConfJson,
    );
  }

  late final _ReloadConfigPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Char>)>>('ReloadConfig');
  late final _ReloadConfig = _ReloadConfigPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>)>();

  ffi.Pointer<ffi.Char> Discard() {
    return _Discard();
  }

  late final _DiscardPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function()>>('Discard');
  late final _Discard =
      _DiscardPtr.asFunction<ffi.Pointer<ffi.Char> Function()>();

  int sum(
    int a,
    int b,
  ) {
    return _sum(
      a,
      b,
    );
  }

  late final _sumPtr =
      _lookup<ffi.NativeFunction<ffi.Int Function(ffi.Int, ffi.Int)>>('sum');
  late final _sum = _sumPtr.asFunction<int Function(int, int)>();

  int sum_long_running(
    int a,
    int b,
  ) {
    return _sum_long_running(
      a,
      b,
    );
  }

  late final _sum_long_runningPtr =
      _lookup<ffi.NativeFunction<ffi.Int Function(ffi.Int, ffi.Int)>>(
          'sum_long_running');
  late final _sum_long_running =
      _sum_long_runningPtr.asFunction<int Function(int, int)>();

  void registerCallback(
    ffi.Pointer<ffi.Void> binop,
  ) {
    return _registerCallback(
      binop,
    );
  }

  late final _registerCallbackPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'registerCallback');
  late final _registerCallback =
      _registerCallbackPtr.asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void start_fetch() {
    return _start_fetch();
  }

  late final _start_fetchPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('start_fetch');
  late final _start_fetch = _start_fetchPtr.asFunction<void Function()>();

  ffi.Pointer<ffi.Char> getHTTPHeaderFirstLine(
    ffi.Pointer<ffi.Char> cUrl,
  ) {
    return _getHTTPHeaderFirstLine(
      cUrl,
    );
  }

  late final _getHTTPHeaderFirstLinePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Char>)>>('getHTTPHeaderFirstLine');
  late final _getHTTPHeaderFirstLine = _getHTTPHeaderFirstLinePtr
      .asFunction<ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>)>();

  /// Free the memory allocated for the C string
  void freeCString(
    ffi.Pointer<ffi.Char> cstr,
  ) {
    return _freeCString(
      cstr,
    );
  }

  late final _freeCStringPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Char>)>>(
          'freeCString');
  late final _freeCString =
      _freeCStringPtr.asFunction<void Function(ffi.Pointer<ffi.Char>)>();

  void enforce_binding() {
    return _enforce_binding();
  }

  late final _enforce_bindingPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('enforce_binding');
  late final _enforce_binding =
      _enforce_bindingPtr.asFunction<void Function()>();
}

final class _GoString_ extends ffi.Struct {
  external ffi.Pointer<ffi.Char> p;

  @ptrdiff_t()
  external int n;
}

typedef ptrdiff_t = ffi.LongLong;
typedef Dartptrdiff_t = int;

final class GoInterface extends ffi.Struct {
  external ffi.Pointer<ffi.Void> t;

  external ffi.Pointer<ffi.Void> v;
}

final class GoSlice extends ffi.Struct {
  external ffi.Pointer<ffi.Void> data;

  @GoInt()
  external int len;

  @GoInt()
  external int cap;
}

typedef GoInt = GoInt64;
typedef GoInt64 = ffi.LongLong;
typedef DartGoInt64 = int;
