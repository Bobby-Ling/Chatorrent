//
//  Generated code. Do not modify.
//  source: error.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use errorDescriptor instead')
const Error$json = {
  '1': 'Error',
  '2': [
    {'1': 'Message', '3': 1, '4': 1, '5': 9, '10': 'Message'},
    {'1': 'err_id', '3': 2, '4': 1, '5': 11, '6': '.ErrID', '10': 'errId'},
    {'1': 'err_call', '3': 3, '4': 1, '5': 11, '6': '.ErrCall', '10': 'errCall'},
    {'1': 'err_lost', '3': 4, '4': 1, '5': 11, '6': '.ErrLost', '10': 'errLost'},
    {'1': 'err_wait', '3': 5, '4': 1, '5': 11, '6': '.ErrWait', '10': 'errWait'},
    {'1': 'err_sdp', '3': 6, '4': 1, '5': 11, '6': '.ErrSdp', '10': 'errSdp'},
  ],
};

/// Descriptor for `Error`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorDescriptor = $convert.base64Decode(
    'CgVFcnJvchIYCgdNZXNzYWdlGAEgASgJUgdNZXNzYWdlEh0KBmVycl9pZBgCIAEoCzIGLkVyck'
    'lEUgVlcnJJZBIjCghlcnJfY2FsbBgDIAEoCzIILkVyckNhbGxSB2VyckNhbGwSIwoIZXJyX2xv'
    'c3QYBCABKAsyCC5FcnJMb3N0UgdlcnJMb3N0EiMKCGVycl93YWl0GAUgASgLMgguRXJyV2FpdF'
    'IHZXJyV2FpdBIgCgdlcnJfc2RwGAYgASgLMgcuRXJyU2RwUgZlcnJTZHA=');

@$core.Deprecated('Use errIDDescriptor instead')
const ErrID$json = {
  '1': 'ErrID',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 5, '10': 'ID'},
  ],
};

/// Descriptor for `ErrID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errIDDescriptor = $convert.base64Decode(
    'CgVFcnJJRBIOCgJJRBgBIAEoBVICSUQ=');

@$core.Deprecated('Use errCallDescriptor instead')
const ErrCall$json = {
  '1': 'ErrCall',
};

/// Descriptor for `ErrCall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errCallDescriptor = $convert.base64Decode(
    'CgdFcnJDYWxs');

@$core.Deprecated('Use errLostDescriptor instead')
const ErrLost$json = {
  '1': 'ErrLost',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 5, '10': 'ID'},
  ],
};

/// Descriptor for `ErrLost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errLostDescriptor = $convert.base64Decode(
    'CgdFcnJMb3N0Eg4KAklEGAEgASgFUgJJRA==');

@$core.Deprecated('Use errWaitDescriptor instead')
const ErrWait$json = {
  '1': 'ErrWait',
};

/// Descriptor for `ErrWait`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errWaitDescriptor = $convert.base64Decode(
    'CgdFcnJXYWl0');

@$core.Deprecated('Use errSdpDescriptor instead')
const ErrSdp$json = {
  '1': 'ErrSdp',
};

/// Descriptor for `ErrSdp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errSdpDescriptor = $convert.base64Decode(
    'CgZFcnJTZHA=');

