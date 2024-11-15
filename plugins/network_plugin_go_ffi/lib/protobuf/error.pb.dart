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

class Error extends $pb.GeneratedMessage {
  factory Error({
    $core.String? message,
    ErrID? errId,
    ErrCall? errCall,
    ErrLost? errLost,
    ErrWait? errWait,
    ErrSdp? errSdp,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    if (errId != null) {
      $result.errId = errId;
    }
    if (errCall != null) {
      $result.errCall = errCall;
    }
    if (errLost != null) {
      $result.errLost = errLost;
    }
    if (errWait != null) {
      $result.errWait = errWait;
    }
    if (errSdp != null) {
      $result.errSdp = errSdp;
    }
    return $result;
  }
  Error._() : super();
  factory Error.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Error.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Error', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Message', protoName: 'Message')
    ..aOM<ErrID>(2, _omitFieldNames ? '' : 'errId', subBuilder: ErrID.create)
    ..aOM<ErrCall>(3, _omitFieldNames ? '' : 'errCall', subBuilder: ErrCall.create)
    ..aOM<ErrLost>(4, _omitFieldNames ? '' : 'errLost', subBuilder: ErrLost.create)
    ..aOM<ErrWait>(5, _omitFieldNames ? '' : 'errWait', subBuilder: ErrWait.create)
    ..aOM<ErrSdp>(6, _omitFieldNames ? '' : 'errSdp', subBuilder: ErrSdp.create)
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

  @$pb.TagNumber(2)
  ErrID get errId => $_getN(1);
  @$pb.TagNumber(2)
  set errId(ErrID v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrId() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrId() => clearField(2);
  @$pb.TagNumber(2)
  ErrID ensureErrId() => $_ensure(1);

  @$pb.TagNumber(3)
  ErrCall get errCall => $_getN(2);
  @$pb.TagNumber(3)
  set errCall(ErrCall v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasErrCall() => $_has(2);
  @$pb.TagNumber(3)
  void clearErrCall() => clearField(3);
  @$pb.TagNumber(3)
  ErrCall ensureErrCall() => $_ensure(2);

  @$pb.TagNumber(4)
  ErrLost get errLost => $_getN(3);
  @$pb.TagNumber(4)
  set errLost(ErrLost v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasErrLost() => $_has(3);
  @$pb.TagNumber(4)
  void clearErrLost() => clearField(4);
  @$pb.TagNumber(4)
  ErrLost ensureErrLost() => $_ensure(3);

  @$pb.TagNumber(5)
  ErrWait get errWait => $_getN(4);
  @$pb.TagNumber(5)
  set errWait(ErrWait v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasErrWait() => $_has(4);
  @$pb.TagNumber(5)
  void clearErrWait() => clearField(5);
  @$pb.TagNumber(5)
  ErrWait ensureErrWait() => $_ensure(4);

  @$pb.TagNumber(6)
  ErrSdp get errSdp => $_getN(5);
  @$pb.TagNumber(6)
  set errSdp(ErrSdp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasErrSdp() => $_has(5);
  @$pb.TagNumber(6)
  void clearErrSdp() => clearField(6);
  @$pb.TagNumber(6)
  ErrSdp ensureErrSdp() => $_ensure(5);
}

class ErrID extends $pb.GeneratedMessage {
  factory ErrID({
    $core.int? iD,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
    }
    return $result;
  }
  ErrID._() : super();
  factory ErrID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ErrID', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'ID', $pb.PbFieldType.O3, protoName: 'ID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ErrID clone() => ErrID()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ErrID copyWith(void Function(ErrID) updates) => super.copyWith((message) => updates(message as ErrID)) as ErrID;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ErrID create() => ErrID._();
  ErrID createEmptyInstance() => create();
  static $pb.PbList<ErrID> createRepeated() => $pb.PbList<ErrID>();
  @$core.pragma('dart2js:noInline')
  static ErrID getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrID>(create);
  static ErrID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get iD => $_getIZ(0);
  @$pb.TagNumber(1)
  set iD($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);
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
  factory ErrLost({
    $core.int? iD,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
    }
    return $result;
  }
  ErrLost._() : super();
  factory ErrLost.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrLost.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ErrLost', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'ID', $pb.PbFieldType.O3, protoName: 'ID')
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

  @$pb.TagNumber(1)
  $core.int get iD => $_getIZ(0);
  @$pb.TagNumber(1)
  set iD($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);
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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
