import 'dart:ffi' as ffi;
import 'dart:io';

import 'package:network_plugin_go_ffi/network_plugin_go_ffi.dart' as network_plugin_go_ffi;


typedef NativeIntptrBinOp = ffi.IntPtr Function(ffi.IntPtr a, ffi.IntPtr b);
typedef NativeRegisterCallbackType = ffi.IntPtr Function(
    ffi.Pointer<ffi.NativeFunction<NativeIntptrBinOp>> binop);
typedef RegisterCallbackType = int Function(
    ffi.Pointer<ffi.NativeFunction<NativeIntptrBinOp>> binop);

// Dart function to be called from C
int sumDart(int a, int b) {
  print("handled by in callback!");
  return a + b + 114511;
}

// Class to encapsulate FFI setup
class NativeFunctionHandler {
  // Path to the native dynamic library
  late ffi.DynamicLibrary dylib;

  // Constructor to load the dynamic library
  NativeFunctionHandler(String libPath) {
    dylib = ffi.DynamicLibrary.open(libPath);
  }

  // Function to apply Dart function to native parameters
  int registerCallback() {
    // Create a NativeCallable to wrap the Dart function
    ffi.NativeCallable<NativeIntptrBinOp> nativeCallable =
        ffi.NativeCallable.isolateLocal(sumDart, exceptionalReturn: 0);

    // Get the native function pointer
    ffi.Pointer<ffi.NativeFunction<NativeIntptrBinOp>> pointer =
        nativeCallable.nativeFunction;

    print("Native function pointer: $pointer");

    // Lookup the C function 'RegisterCallback' in the dynamic library
    ffi.Pointer<ffi.NativeFunction<NativeRegisterCallbackType>> registerCallbackPointer =
        dylib.lookup<ffi.NativeFunction<NativeRegisterCallbackType>>(
            "registerCallback");

    // Convert the native function to a Dart callable
    RegisterCallbackType registerCallback = registerCallbackPointer.asFunction();

    // Call the native function with the Dart function pointer
    registerCallback(pointer);

    int result = network_plugin_go_ffi.sum(1, 2);

    print("Result from C function => $result");

    // Close the NativeCallable after use
    nativeCallable.close();

    return result;
  }
}

void main() {
  // Assuming the dynamic library is located at './lib_network_plugin_go_ffi.so'
  String libPath;
  if (Platform.isWindows) {
    libPath = 'lib_network_plugin_go_ffi.dll';
  } else if (Platform.isMacOS) {
    libPath = 'lib_network_plugin_go_ffi.dylib';
  } else if (Platform.isLinux || Platform.isAndroid) {
    // LD_LIBRARY_PATH=$LD_LIBRARY_PATH:. dart run native_function_handler_test.dart
    libPath = 'lib_network_plugin_go_ffi.so';
  } else {
    throw UnsupportedError('Unknown platform: ${Platform.operatingSystem}');
  }

  // Create the handler and call the function
  NativeFunctionHandler handler = NativeFunctionHandler(libPath);
  handler.registerCallback();

  network_plugin_go_ffi.sumAsync(111, 222).then((result){
    print(result);
  });
}
