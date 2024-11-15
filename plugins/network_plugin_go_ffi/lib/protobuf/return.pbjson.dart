//
//  Generated code. Do not modify.
//  source: return.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use returnDescriptor instead')
const Return$json = {
  '1': 'Return',
  '2': [
    {'1': 'err', '3': 1, '4': 1, '5': 11, '6': '.Error', '10': 'err'},
    {'1': 'create_session_return', '3': 2, '4': 1, '5': 11, '6': '.ReturnCreateSession', '10': 'createSessionReturn'},
    {'1': 'offer_return', '3': 3, '4': 1, '5': 11, '6': '.ReturnOffer', '10': 'offerReturn'},
    {'1': 'join_session_return', '3': 4, '4': 1, '5': 11, '6': '.ReturnJoinSession', '10': 'joinSessionReturn'},
    {'1': 'answer_return', '3': 5, '4': 1, '5': 11, '6': '.ReturnAnswer', '10': 'answerReturn'},
    {'1': 'confirm_answer_return', '3': 6, '4': 1, '5': 11, '6': '.ReturnConfirmAnswer', '10': 'confirmAnswerReturn'},
    {'1': 'send_return', '3': 7, '4': 1, '5': 11, '6': '.ReturnSend', '10': 'sendReturn'},
    {'1': 'ready_return', '3': 8, '4': 1, '5': 11, '6': '.ReturnReady', '10': 'readyReturn'},
    {'1': 'drop_session_return', '3': 9, '4': 1, '5': 11, '6': '.ReturnDropSession', '10': 'dropSessionReturn'},
    {'1': 'reload_config_return', '3': 10, '4': 1, '5': 11, '6': '.ReturnReloadConfig', '10': 'reloadConfigReturn'},
    {'1': 'discard_return', '3': 11, '4': 1, '5': 11, '6': '.ReturnDiscard', '10': 'discardReturn'},
  ],
};

/// Descriptor for `Return`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnDescriptor = $convert.base64Decode(
    'CgZSZXR1cm4SGAoDZXJyGAEgASgLMgYuRXJyb3JSA2VychJIChVjcmVhdGVfc2Vzc2lvbl9yZX'
    'R1cm4YAiABKAsyFC5SZXR1cm5DcmVhdGVTZXNzaW9uUhNjcmVhdGVTZXNzaW9uUmV0dXJuEi8K'
    'DG9mZmVyX3JldHVybhgDIAEoCzIMLlJldHVybk9mZmVyUgtvZmZlclJldHVybhJCChNqb2luX3'
    'Nlc3Npb25fcmV0dXJuGAQgASgLMhIuUmV0dXJuSm9pblNlc3Npb25SEWpvaW5TZXNzaW9uUmV0'
    'dXJuEjIKDWFuc3dlcl9yZXR1cm4YBSABKAsyDS5SZXR1cm5BbnN3ZXJSDGFuc3dlclJldHVybh'
    'JIChVjb25maXJtX2Fuc3dlcl9yZXR1cm4YBiABKAsyFC5SZXR1cm5Db25maXJtQW5zd2VyUhNj'
    'b25maXJtQW5zd2VyUmV0dXJuEiwKC3NlbmRfcmV0dXJuGAcgASgLMgsuUmV0dXJuU2VuZFIKc2'
    'VuZFJldHVybhIvCgxyZWFkeV9yZXR1cm4YCCABKAsyDC5SZXR1cm5SZWFkeVILcmVhZHlSZXR1'
    'cm4SQgoTZHJvcF9zZXNzaW9uX3JldHVybhgJIAEoCzISLlJldHVybkRyb3BTZXNzaW9uUhFkcm'
    '9wU2Vzc2lvblJldHVybhJFChRyZWxvYWRfY29uZmlnX3JldHVybhgKIAEoCzITLlJldHVyblJl'
    'bG9hZENvbmZpZ1IScmVsb2FkQ29uZmlnUmV0dXJuEjUKDmRpc2NhcmRfcmV0dXJuGAsgASgLMg'
    '4uUmV0dXJuRGlzY2FyZFINZGlzY2FyZFJldHVybg==');

@$core.Deprecated('Use returnCreateSessionDescriptor instead')
const ReturnCreateSession$json = {
  '1': 'ReturnCreateSession',
};

/// Descriptor for `ReturnCreateSession`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnCreateSessionDescriptor = $convert.base64Decode(
    'ChNSZXR1cm5DcmVhdGVTZXNzaW9u');

@$core.Deprecated('Use returnOfferDescriptor instead')
const ReturnOffer$json = {
  '1': 'ReturnOffer',
  '2': [
    {'1': 'offer_base64', '3': 1, '4': 1, '5': 9, '10': 'offerBase64'},
  ],
};

/// Descriptor for `ReturnOffer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnOfferDescriptor = $convert.base64Decode(
    'CgtSZXR1cm5PZmZlchIhCgxvZmZlcl9iYXNlNjQYASABKAlSC29mZmVyQmFzZTY0');

@$core.Deprecated('Use returnJoinSessionDescriptor instead')
const ReturnJoinSession$json = {
  '1': 'ReturnJoinSession',
};

/// Descriptor for `ReturnJoinSession`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnJoinSessionDescriptor = $convert.base64Decode(
    'ChFSZXR1cm5Kb2luU2Vzc2lvbg==');

@$core.Deprecated('Use returnAnswerDescriptor instead')
const ReturnAnswer$json = {
  '1': 'ReturnAnswer',
  '2': [
    {'1': 'answer_base64', '3': 1, '4': 1, '5': 9, '10': 'answerBase64'},
  ],
};

/// Descriptor for `ReturnAnswer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnAnswerDescriptor = $convert.base64Decode(
    'CgxSZXR1cm5BbnN3ZXISIwoNYW5zd2VyX2Jhc2U2NBgBIAEoCVIMYW5zd2VyQmFzZTY0');

@$core.Deprecated('Use returnConfirmAnswerDescriptor instead')
const ReturnConfirmAnswer$json = {
  '1': 'ReturnConfirmAnswer',
};

/// Descriptor for `ReturnConfirmAnswer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnConfirmAnswerDescriptor = $convert.base64Decode(
    'ChNSZXR1cm5Db25maXJtQW5zd2Vy');

@$core.Deprecated('Use returnSendDescriptor instead')
const ReturnSend$json = {
  '1': 'ReturnSend',
};

/// Descriptor for `ReturnSend`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnSendDescriptor = $convert.base64Decode(
    'CgpSZXR1cm5TZW5k');

@$core.Deprecated('Use returnReadyDescriptor instead')
const ReturnReady$json = {
  '1': 'ReturnReady',
  '2': [
    {'1': 'ready_list', '3': 1, '4': 3, '5': 11, '6': '.Ready', '10': 'readyList'},
  ],
};

/// Descriptor for `ReturnReady`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnReadyDescriptor = $convert.base64Decode(
    'CgtSZXR1cm5SZWFkeRIlCgpyZWFkeV9saXN0GAEgAygLMgYuUmVhZHlSCXJlYWR5TGlzdA==');

@$core.Deprecated('Use returnDropSessionDescriptor instead')
const ReturnDropSession$json = {
  '1': 'ReturnDropSession',
};

/// Descriptor for `ReturnDropSession`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnDropSessionDescriptor = $convert.base64Decode(
    'ChFSZXR1cm5Ecm9wU2Vzc2lvbg==');

@$core.Deprecated('Use returnReloadConfigDescriptor instead')
const ReturnReloadConfig$json = {
  '1': 'ReturnReloadConfig',
};

/// Descriptor for `ReturnReloadConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnReloadConfigDescriptor = $convert.base64Decode(
    'ChJSZXR1cm5SZWxvYWRDb25maWc=');

@$core.Deprecated('Use returnDiscardDescriptor instead')
const ReturnDiscard$json = {
  '1': 'ReturnDiscard',
};

/// Descriptor for `ReturnDiscard`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnDiscardDescriptor = $convert.base64Decode(
    'Cg1SZXR1cm5EaXNjYXJk');

