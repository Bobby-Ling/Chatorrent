//
//  Generated code. Do not modify.
//  source: communicate.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use returnCreateSessionDescriptor instead')
const ReturnCreateSession$json = {
  '1': 'ReturnCreateSession',
  '2': [
    {'1': 'err', '3': 1, '4': 1, '5': 11, '6': '.Error', '10': 'err'},
  ],
};

/// Descriptor for `ReturnCreateSession`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnCreateSessionDescriptor = $convert.base64Decode(
    'ChNSZXR1cm5DcmVhdGVTZXNzaW9uEhgKA2VychgBIAEoCzIGLkVycm9yUgNlcnI=');

@$core.Deprecated('Use returnOfferDescriptor instead')
const ReturnOffer$json = {
  '1': 'ReturnOffer',
  '2': [
    {'1': 'offer', '3': 1, '4': 1, '5': 9, '10': 'offer'},
    {'1': 'err', '3': 2, '4': 1, '5': 11, '6': '.Error', '10': 'err'},
  ],
};

/// Descriptor for `ReturnOffer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnOfferDescriptor = $convert.base64Decode(
    'CgtSZXR1cm5PZmZlchIUCgVvZmZlchgBIAEoCVIFb2ZmZXISGAoDZXJyGAIgASgLMgYuRXJyb3'
    'JSA2Vycg==');

@$core.Deprecated('Use returnJoinSessionDescriptor instead')
const ReturnJoinSession$json = {
  '1': 'ReturnJoinSession',
  '2': [
    {'1': 'err', '3': 1, '4': 1, '5': 11, '6': '.Error', '10': 'err'},
  ],
};

/// Descriptor for `ReturnJoinSession`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnJoinSessionDescriptor = $convert.base64Decode(
    'ChFSZXR1cm5Kb2luU2Vzc2lvbhIYCgNlcnIYASABKAsyBi5FcnJvclIDZXJy');

@$core.Deprecated('Use returnAnswerDescriptor instead')
const ReturnAnswer$json = {
  '1': 'ReturnAnswer',
  '2': [
    {'1': 'answer', '3': 1, '4': 1, '5': 9, '10': 'answer'},
    {'1': 'err', '3': 2, '4': 1, '5': 11, '6': '.Error', '10': 'err'},
  ],
};

/// Descriptor for `ReturnAnswer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnAnswerDescriptor = $convert.base64Decode(
    'CgxSZXR1cm5BbnN3ZXISFgoGYW5zd2VyGAEgASgJUgZhbnN3ZXISGAoDZXJyGAIgASgLMgYuRX'
    'Jyb3JSA2Vycg==');

@$core.Deprecated('Use returnConfirmAnswerDescriptor instead')
const ReturnConfirmAnswer$json = {
  '1': 'ReturnConfirmAnswer',
  '2': [
    {'1': 'err', '3': 1, '4': 1, '5': 11, '6': '.Error', '10': 'err'},
  ],
};

/// Descriptor for `ReturnConfirmAnswer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnConfirmAnswerDescriptor = $convert.base64Decode(
    'ChNSZXR1cm5Db25maXJtQW5zd2VyEhgKA2VychgBIAEoCzIGLkVycm9yUgNlcnI=');

@$core.Deprecated('Use returnSendDescriptor instead')
const ReturnSend$json = {
  '1': 'ReturnSend',
  '2': [
    {'1': 'err', '3': 1, '4': 1, '5': 11, '6': '.Error', '10': 'err'},
  ],
};

/// Descriptor for `ReturnSend`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnSendDescriptor = $convert.base64Decode(
    'CgpSZXR1cm5TZW5kEhgKA2VychgBIAEoCzIGLkVycm9yUgNlcnI=');

@$core.Deprecated('Use returnReadyDescriptor instead')
const ReturnReady$json = {
  '1': 'ReturnReady',
  '2': [
    {'1': 'readylist', '3': 1, '4': 3, '5': 11, '6': '.Ready', '10': 'readylist'},
    {'1': 'err', '3': 2, '4': 1, '5': 11, '6': '.Error', '10': 'err'},
  ],
};

/// Descriptor for `ReturnReady`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnReadyDescriptor = $convert.base64Decode(
    'CgtSZXR1cm5SZWFkeRIkCglyZWFkeWxpc3QYASADKAsyBi5SZWFkeVIJcmVhZHlsaXN0EhgKA2'
    'VychgCIAEoCzIGLkVycm9yUgNlcnI=');

@$core.Deprecated('Use returnDropSessionDescriptor instead')
const ReturnDropSession$json = {
  '1': 'ReturnDropSession',
  '2': [
    {'1': 'err', '3': 1, '4': 1, '5': 11, '6': '.Error', '10': 'err'},
  ],
};

/// Descriptor for `ReturnDropSession`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnDropSessionDescriptor = $convert.base64Decode(
    'ChFSZXR1cm5Ecm9wU2Vzc2lvbhIYCgNlcnIYASABKAsyBi5FcnJvclIDZXJy');

@$core.Deprecated('Use returnReloadConfigDescriptor instead')
const ReturnReloadConfig$json = {
  '1': 'ReturnReloadConfig',
  '2': [
    {'1': 'err', '3': 1, '4': 1, '5': 11, '6': '.Error', '10': 'err'},
  ],
};

/// Descriptor for `ReturnReloadConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnReloadConfigDescriptor = $convert.base64Decode(
    'ChJSZXR1cm5SZWxvYWRDb25maWcSGAoDZXJyGAEgASgLMgYuRXJyb3JSA2Vycg==');

@$core.Deprecated('Use returnDiscardDescriptor instead')
const ReturnDiscard$json = {
  '1': 'ReturnDiscard',
  '2': [
    {'1': 'err', '3': 1, '4': 1, '5': 11, '6': '.Error', '10': 'err'},
  ],
};

/// Descriptor for `ReturnDiscard`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnDiscardDescriptor = $convert.base64Decode(
    'Cg1SZXR1cm5EaXNjYXJkEhgKA2VychgBIAEoCzIGLkVycm9yUgNlcnI=');

@$core.Deprecated('Use returnDescriptor instead')
const Return$json = {
  '1': 'Return',
  '2': [
    {'1': 'returnCreateSession', '3': 1, '4': 1, '5': 11, '6': '.ReturnCreateSession', '10': 'returnCreateSession'},
    {'1': 'returnOffer', '3': 2, '4': 1, '5': 11, '6': '.ReturnOffer', '10': 'returnOffer'},
    {'1': 'returnJoinSession', '3': 3, '4': 1, '5': 11, '6': '.ReturnJoinSession', '10': 'returnJoinSession'},
    {'1': 'returnAnswer', '3': 4, '4': 1, '5': 11, '6': '.ReturnAnswer', '10': 'returnAnswer'},
    {'1': 'returnConfirmAnswer', '3': 5, '4': 1, '5': 11, '6': '.ReturnConfirmAnswer', '10': 'returnConfirmAnswer'},
    {'1': 'returnSend', '3': 6, '4': 1, '5': 11, '6': '.ReturnSend', '10': 'returnSend'},
    {'1': 'returnReady', '3': 7, '4': 1, '5': 11, '6': '.ReturnReady', '10': 'returnReady'},
    {'1': 'returnDropSession', '3': 8, '4': 1, '5': 11, '6': '.ReturnDropSession', '10': 'returnDropSession'},
    {'1': 'returnReloadConfig', '3': 9, '4': 1, '5': 11, '6': '.ReturnReloadConfig', '10': 'returnReloadConfig'},
    {'1': 'returnDiscard', '3': 10, '4': 1, '5': 11, '6': '.ReturnDiscard', '10': 'returnDiscard'},
  ],
};

/// Descriptor for `Return`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnDescriptor = $convert.base64Decode(
    'CgZSZXR1cm4SRgoTcmV0dXJuQ3JlYXRlU2Vzc2lvbhgBIAEoCzIULlJldHVybkNyZWF0ZVNlc3'
    'Npb25SE3JldHVybkNyZWF0ZVNlc3Npb24SLgoLcmV0dXJuT2ZmZXIYAiABKAsyDC5SZXR1cm5P'
    'ZmZlclILcmV0dXJuT2ZmZXISQAoRcmV0dXJuSm9pblNlc3Npb24YAyABKAsyEi5SZXR1cm5Kb2'
    'luU2Vzc2lvblIRcmV0dXJuSm9pblNlc3Npb24SMQoMcmV0dXJuQW5zd2VyGAQgASgLMg0uUmV0'
    'dXJuQW5zd2VyUgxyZXR1cm5BbnN3ZXISRgoTcmV0dXJuQ29uZmlybUFuc3dlchgFIAEoCzIULl'
    'JldHVybkNvbmZpcm1BbnN3ZXJSE3JldHVybkNvbmZpcm1BbnN3ZXISKwoKcmV0dXJuU2VuZBgG'
    'IAEoCzILLlJldHVyblNlbmRSCnJldHVyblNlbmQSLgoLcmV0dXJuUmVhZHkYByABKAsyDC5SZX'
    'R1cm5SZWFkeVILcmV0dXJuUmVhZHkSQAoRcmV0dXJuRHJvcFNlc3Npb24YCCABKAsyEi5SZXR1'
    'cm5Ecm9wU2Vzc2lvblIRcmV0dXJuRHJvcFNlc3Npb24SQwoScmV0dXJuUmVsb2FkQ29uZmlnGA'
    'kgASgLMhMuUmV0dXJuUmVsb2FkQ29uZmlnUhJyZXR1cm5SZWxvYWRDb25maWcSNAoNcmV0dXJu'
    'RGlzY2FyZBgKIAEoCzIOLlJldHVybkRpc2NhcmRSDXJldHVybkRpc2NhcmQ=');

