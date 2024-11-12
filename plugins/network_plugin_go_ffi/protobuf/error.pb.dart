//
//  Generated code. Do not modify.
//  source: error.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ErrSessionID extends $pb.GeneratedMessage {
  factory ErrSessionID() => create();
  ErrSessionID._() : super();
  factory ErrSessionID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrSessionID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ErrSessionID', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ErrSessionID clone() => ErrSessionID()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ErrSessionID copyWith(void Function(ErrSessionID) updates) => super.copyWith((message) => updates(message as ErrSessionID)) as ErrSessionID;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ErrSessionID create() => ErrSessionID._();
  ErrSessionID createEmptyInstance() => create();
  static $pb.PbList<ErrSessionID> createRepeated() => $pb.PbList<ErrSessionID>();
  @$core.pragma('dart2js:noInline')
  static ErrSessionID getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrSessionID>(create);
  static ErrSessionID? _defaultInstance;
}

class ErrCall extends $pb.GeneratedMessage {
  factory ErrCall() => create();
  ErrCall._() : super();
  factory ErrCall.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrCall.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ErrCall', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ErrCall clone() => ErrCall()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ErrCall copyWith(void Function(ErrCall) updates) => super.copyWith((message) => updates(message as ErrCall)) as ErrCall;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ErrCall create() => ErrCall._();
  ErrCall createEmptyInstance() => create();
  static $pb.PbList<ErrCall> createRepeated() => $pb.PbList<ErrCall>();
  @$core.pragma('dart2js:noInline')
  static ErrCall getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrCall>(create);
  static ErrCall? _defaultInstance;
}

class ErrLost extends $pb.GeneratedMessage {
  factory ErrLost() => create();
  ErrLost._() : super();
  factory ErrLost.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrLost.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ErrLost', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ErrLost clone() => ErrLost()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ErrLost copyWith(void Function(ErrLost) updates) => super.copyWith((message) => updates(message as ErrLost)) as ErrLost;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ErrLost create() => ErrLost._();
  ErrLost createEmptyInstance() => create();
  static $pb.PbList<ErrLost> createRepeated() => $pb.PbList<ErrLost>();
  @$core.pragma('dart2js:noInline')
  static ErrLost getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrLost>(create);
  static ErrLost? _defaultInstance;
}

class ErrWait extends $pb.GeneratedMessage {
  factory ErrWait() => create();
  ErrWait._() : super();
  factory ErrWait.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrWait.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ErrWait', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ErrWait clone() => ErrWait()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ErrWait copyWith(void Function(ErrWait) updates) => super.copyWith((message) => updates(message as ErrWait)) as ErrWait;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ErrWait create() => ErrWait._();
  ErrWait createEmptyInstance() => create();
  static $pb.PbList<ErrWait> createRepeated() => $pb.PbList<ErrWait>();
  @$core.pragma('dart2js:noInline')
  static ErrWait getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrWait>(create);
  static ErrWait? _defaultInstance;
}

class ErrSdp extends $pb.GeneratedMessage {
  factory ErrSdp() => create();
  ErrSdp._() : super();
  factory ErrSdp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrSdp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ErrSdp', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ErrSdp clone() => ErrSdp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ErrSdp copyWith(void Function(ErrSdp) updates) => super.copyWith((message) => updates(message as ErrSdp)) as ErrSdp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ErrSdp create() => ErrSdp._();
  ErrSdp createEmptyInstance() => create();
  static $pb.PbList<ErrSdp> createRepeated() => $pb.PbList<ErrSdp>();
  @$core.pragma('dart2js:noInline')
  static ErrSdp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrSdp>(create);
  static ErrSdp? _defaultInstance;
}

class Error extends $pb.GeneratedMessage {
  factory Error({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  Error._() : super();
  factory Error.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Error.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Error', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Message', protoName: 'Message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Error clone() => Error()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Error copyWith(void Function(Error) updates) => super.copyWith((message) => updates(message as Error)) as Error;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Error create() => Error._();
  Error createEmptyInstance() => create();
  static $pb.PbList<Error> createRepeated() => $pb.PbList<Error>();
  @$core.pragma('dart2js:noInline')
  static Error getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Error>(create);
  static Error? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
