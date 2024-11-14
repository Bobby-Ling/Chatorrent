//
//  Generated code. Do not modify.
//  source: communicate.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'error.pb.dart' as $0;
import 'sessionmgr.pb.dart' as $1;

class ReturnCreateSession extends $pb.GeneratedMessage {
  factory ReturnCreateSession({
    $0.Error? err,
  }) {
    final $result = create();
    if (err != null) {
      $result.err = err;
    }
    return $result;
  }
  ReturnCreateSession._() : super();
  factory ReturnCreateSession.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReturnCreateSession.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnCreateSession', createEmptyInstance: create)
    ..aOM<$0.Error>(1, _omitFieldNames ? '' : 'err', subBuilder: $0.Error.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReturnCreateSession clone() => ReturnCreateSession()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReturnCreateSession copyWith(void Function(ReturnCreateSession) updates) => super.copyWith((message) => updates(message as ReturnCreateSession)) as ReturnCreateSession;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReturnCreateSession create() => ReturnCreateSession._();
  ReturnCreateSession createEmptyInstance() => create();
  static $pb.PbList<ReturnCreateSession> createRepeated() => $pb.PbList<ReturnCreateSession>();
  @$core.pragma('dart2js:noInline')
  static ReturnCreateSession getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReturnCreateSession>(create);
  static ReturnCreateSession? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Error get err => $_getN(0);
  @$pb.TagNumber(1)
  set err($0.Error v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasErr() => $_has(0);
  @$pb.TagNumber(1)
  void clearErr() => clearField(1);
  @$pb.TagNumber(1)
  $0.Error ensureErr() => $_ensure(0);
}

class ReturnOffer extends $pb.GeneratedMessage {
  factory ReturnOffer({
    $core.String? offer,
    $0.Error? err,
  }) {
    final $result = create();
    if (offer != null) {
      $result.offer = offer;
    }
    if (err != null) {
      $result.err = err;
    }
    return $result;
  }
  ReturnOffer._() : super();
  factory ReturnOffer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReturnOffer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnOffer', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'offer')
    ..aOM<$0.Error>(2, _omitFieldNames ? '' : 'err', subBuilder: $0.Error.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReturnOffer clone() => ReturnOffer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReturnOffer copyWith(void Function(ReturnOffer) updates) => super.copyWith((message) => updates(message as ReturnOffer)) as ReturnOffer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReturnOffer create() => ReturnOffer._();
  ReturnOffer createEmptyInstance() => create();
  static $pb.PbList<ReturnOffer> createRepeated() => $pb.PbList<ReturnOffer>();
  @$core.pragma('dart2js:noInline')
  static ReturnOffer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReturnOffer>(create);
  static ReturnOffer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get offer => $_getSZ(0);
  @$pb.TagNumber(1)
  set offer($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOffer() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffer() => clearField(1);

  @$pb.TagNumber(2)
  $0.Error get err => $_getN(1);
  @$pb.TagNumber(2)
  set err($0.Error v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasErr() => $_has(1);
  @$pb.TagNumber(2)
  void clearErr() => clearField(2);
  @$pb.TagNumber(2)
  $0.Error ensureErr() => $_ensure(1);
}

class ReturnJoinSession extends $pb.GeneratedMessage {
  factory ReturnJoinSession({
    $0.Error? err,
  }) {
    final $result = create();
    if (err != null) {
      $result.err = err;
    }
    return $result;
  }
  ReturnJoinSession._() : super();
  factory ReturnJoinSession.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReturnJoinSession.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnJoinSession', createEmptyInstance: create)
    ..aOM<$0.Error>(1, _omitFieldNames ? '' : 'err', subBuilder: $0.Error.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReturnJoinSession clone() => ReturnJoinSession()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReturnJoinSession copyWith(void Function(ReturnJoinSession) updates) => super.copyWith((message) => updates(message as ReturnJoinSession)) as ReturnJoinSession;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReturnJoinSession create() => ReturnJoinSession._();
  ReturnJoinSession createEmptyInstance() => create();
  static $pb.PbList<ReturnJoinSession> createRepeated() => $pb.PbList<ReturnJoinSession>();
  @$core.pragma('dart2js:noInline')
  static ReturnJoinSession getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReturnJoinSession>(create);
  static ReturnJoinSession? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Error get err => $_getN(0);
  @$pb.TagNumber(1)
  set err($0.Error v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasErr() => $_has(0);
  @$pb.TagNumber(1)
  void clearErr() => clearField(1);
  @$pb.TagNumber(1)
  $0.Error ensureErr() => $_ensure(0);
}

class ReturnAnswer extends $pb.GeneratedMessage {
  factory ReturnAnswer({
    $core.String? answer,
    $0.Error? err,
  }) {
    final $result = create();
    if (answer != null) {
      $result.answer = answer;
    }
    if (err != null) {
      $result.err = err;
    }
    return $result;
  }
  ReturnAnswer._() : super();
  factory ReturnAnswer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReturnAnswer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnAnswer', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'answer')
    ..aOM<$0.Error>(2, _omitFieldNames ? '' : 'err', subBuilder: $0.Error.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReturnAnswer clone() => ReturnAnswer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReturnAnswer copyWith(void Function(ReturnAnswer) updates) => super.copyWith((message) => updates(message as ReturnAnswer)) as ReturnAnswer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReturnAnswer create() => ReturnAnswer._();
  ReturnAnswer createEmptyInstance() => create();
  static $pb.PbList<ReturnAnswer> createRepeated() => $pb.PbList<ReturnAnswer>();
  @$core.pragma('dart2js:noInline')
  static ReturnAnswer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReturnAnswer>(create);
  static ReturnAnswer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get answer => $_getSZ(0);
  @$pb.TagNumber(1)
  set answer($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAnswer() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnswer() => clearField(1);

  @$pb.TagNumber(2)
  $0.Error get err => $_getN(1);
  @$pb.TagNumber(2)
  set err($0.Error v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasErr() => $_has(1);
  @$pb.TagNumber(2)
  void clearErr() => clearField(2);
  @$pb.TagNumber(2)
  $0.Error ensureErr() => $_ensure(1);
}

class ReturnConfirmAnswer extends $pb.GeneratedMessage {
  factory ReturnConfirmAnswer({
    $0.Error? err,
  }) {
    final $result = create();
    if (err != null) {
      $result.err = err;
    }
    return $result;
  }
  ReturnConfirmAnswer._() : super();
  factory ReturnConfirmAnswer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReturnConfirmAnswer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnConfirmAnswer', createEmptyInstance: create)
    ..aOM<$0.Error>(1, _omitFieldNames ? '' : 'err', subBuilder: $0.Error.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReturnConfirmAnswer clone() => ReturnConfirmAnswer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReturnConfirmAnswer copyWith(void Function(ReturnConfirmAnswer) updates) => super.copyWith((message) => updates(message as ReturnConfirmAnswer)) as ReturnConfirmAnswer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReturnConfirmAnswer create() => ReturnConfirmAnswer._();
  ReturnConfirmAnswer createEmptyInstance() => create();
  static $pb.PbList<ReturnConfirmAnswer> createRepeated() => $pb.PbList<ReturnConfirmAnswer>();
  @$core.pragma('dart2js:noInline')
  static ReturnConfirmAnswer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReturnConfirmAnswer>(create);
  static ReturnConfirmAnswer? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Error get err => $_getN(0);
  @$pb.TagNumber(1)
  set err($0.Error v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasErr() => $_has(0);
  @$pb.TagNumber(1)
  void clearErr() => clearField(1);
  @$pb.TagNumber(1)
  $0.Error ensureErr() => $_ensure(0);
}

class ReturnSend extends $pb.GeneratedMessage {
  factory ReturnSend({
    $0.Error? err,
  }) {
    final $result = create();
    if (err != null) {
      $result.err = err;
    }
    return $result;
  }
  ReturnSend._() : super();
  factory ReturnSend.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReturnSend.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnSend', createEmptyInstance: create)
    ..aOM<$0.Error>(1, _omitFieldNames ? '' : 'err', subBuilder: $0.Error.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReturnSend clone() => ReturnSend()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReturnSend copyWith(void Function(ReturnSend) updates) => super.copyWith((message) => updates(message as ReturnSend)) as ReturnSend;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReturnSend create() => ReturnSend._();
  ReturnSend createEmptyInstance() => create();
  static $pb.PbList<ReturnSend> createRepeated() => $pb.PbList<ReturnSend>();
  @$core.pragma('dart2js:noInline')
  static ReturnSend getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReturnSend>(create);
  static ReturnSend? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Error get err => $_getN(0);
  @$pb.TagNumber(1)
  set err($0.Error v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasErr() => $_has(0);
  @$pb.TagNumber(1)
  void clearErr() => clearField(1);
  @$pb.TagNumber(1)
  $0.Error ensureErr() => $_ensure(0);
}

class ReturnReady extends $pb.GeneratedMessage {
  factory ReturnReady({
    $core.Iterable<$1.Ready>? readylist,
    $0.Error? err,
  }) {
    final $result = create();
    if (readylist != null) {
      $result.readylist.addAll(readylist);
    }
    if (err != null) {
      $result.err = err;
    }
    return $result;
  }
  ReturnReady._() : super();
  factory ReturnReady.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReturnReady.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnReady', createEmptyInstance: create)
    ..pc<$1.Ready>(1, _omitFieldNames ? '' : 'readylist', $pb.PbFieldType.PM, subBuilder: $1.Ready.create)
    ..aOM<$0.Error>(2, _omitFieldNames ? '' : 'err', subBuilder: $0.Error.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReturnReady clone() => ReturnReady()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReturnReady copyWith(void Function(ReturnReady) updates) => super.copyWith((message) => updates(message as ReturnReady)) as ReturnReady;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReturnReady create() => ReturnReady._();
  ReturnReady createEmptyInstance() => create();
  static $pb.PbList<ReturnReady> createRepeated() => $pb.PbList<ReturnReady>();
  @$core.pragma('dart2js:noInline')
  static ReturnReady getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReturnReady>(create);
  static ReturnReady? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.Ready> get readylist => $_getList(0);

  @$pb.TagNumber(2)
  $0.Error get err => $_getN(1);
  @$pb.TagNumber(2)
  set err($0.Error v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasErr() => $_has(1);
  @$pb.TagNumber(2)
  void clearErr() => clearField(2);
  @$pb.TagNumber(2)
  $0.Error ensureErr() => $_ensure(1);
}

class ReturnDropSession extends $pb.GeneratedMessage {
  factory ReturnDropSession({
    $0.Error? err,
  }) {
    final $result = create();
    if (err != null) {
      $result.err = err;
    }
    return $result;
  }
  ReturnDropSession._() : super();
  factory ReturnDropSession.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReturnDropSession.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnDropSession', createEmptyInstance: create)
    ..aOM<$0.Error>(1, _omitFieldNames ? '' : 'err', subBuilder: $0.Error.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReturnDropSession clone() => ReturnDropSession()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReturnDropSession copyWith(void Function(ReturnDropSession) updates) => super.copyWith((message) => updates(message as ReturnDropSession)) as ReturnDropSession;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReturnDropSession create() => ReturnDropSession._();
  ReturnDropSession createEmptyInstance() => create();
  static $pb.PbList<ReturnDropSession> createRepeated() => $pb.PbList<ReturnDropSession>();
  @$core.pragma('dart2js:noInline')
  static ReturnDropSession getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReturnDropSession>(create);
  static ReturnDropSession? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Error get err => $_getN(0);
  @$pb.TagNumber(1)
  set err($0.Error v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasErr() => $_has(0);
  @$pb.TagNumber(1)
  void clearErr() => clearField(1);
  @$pb.TagNumber(1)
  $0.Error ensureErr() => $_ensure(0);
}

class ReturnReloadConfig extends $pb.GeneratedMessage {
  factory ReturnReloadConfig({
    $0.Error? err,
  }) {
    final $result = create();
    if (err != null) {
      $result.err = err;
    }
    return $result;
  }
  ReturnReloadConfig._() : super();
  factory ReturnReloadConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReturnReloadConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnReloadConfig', createEmptyInstance: create)
    ..aOM<$0.Error>(1, _omitFieldNames ? '' : 'err', subBuilder: $0.Error.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReturnReloadConfig clone() => ReturnReloadConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReturnReloadConfig copyWith(void Function(ReturnReloadConfig) updates) => super.copyWith((message) => updates(message as ReturnReloadConfig)) as ReturnReloadConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReturnReloadConfig create() => ReturnReloadConfig._();
  ReturnReloadConfig createEmptyInstance() => create();
  static $pb.PbList<ReturnReloadConfig> createRepeated() => $pb.PbList<ReturnReloadConfig>();
  @$core.pragma('dart2js:noInline')
  static ReturnReloadConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReturnReloadConfig>(create);
  static ReturnReloadConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Error get err => $_getN(0);
  @$pb.TagNumber(1)
  set err($0.Error v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasErr() => $_has(0);
  @$pb.TagNumber(1)
  void clearErr() => clearField(1);
  @$pb.TagNumber(1)
  $0.Error ensureErr() => $_ensure(0);
}

class ReturnDiscard extends $pb.GeneratedMessage {
  factory ReturnDiscard({
    $0.Error? err,
  }) {
    final $result = create();
    if (err != null) {
      $result.err = err;
    }
    return $result;
  }
  ReturnDiscard._() : super();
  factory ReturnDiscard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReturnDiscard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnDiscard', createEmptyInstance: create)
    ..aOM<$0.Error>(1, _omitFieldNames ? '' : 'err', subBuilder: $0.Error.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReturnDiscard clone() => ReturnDiscard()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReturnDiscard copyWith(void Function(ReturnDiscard) updates) => super.copyWith((message) => updates(message as ReturnDiscard)) as ReturnDiscard;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReturnDiscard create() => ReturnDiscard._();
  ReturnDiscard createEmptyInstance() => create();
  static $pb.PbList<ReturnDiscard> createRepeated() => $pb.PbList<ReturnDiscard>();
  @$core.pragma('dart2js:noInline')
  static ReturnDiscard getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReturnDiscard>(create);
  static ReturnDiscard? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Error get err => $_getN(0);
  @$pb.TagNumber(1)
  set err($0.Error v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasErr() => $_has(0);
  @$pb.TagNumber(1)
  void clearErr() => clearField(1);
  @$pb.TagNumber(1)
  $0.Error ensureErr() => $_ensure(0);
}

class Return extends $pb.GeneratedMessage {
  factory Return({
    ReturnCreateSession? returnCreateSession,
    ReturnOffer? returnOffer,
    ReturnJoinSession? returnJoinSession,
    ReturnAnswer? returnAnswer,
    ReturnConfirmAnswer? returnConfirmAnswer,
    ReturnSend? returnSend,
    ReturnReady? returnReady,
    ReturnDropSession? returnDropSession,
    ReturnReloadConfig? returnReloadConfig,
    ReturnDiscard? returnDiscard,
  }) {
    final $result = create();
    if (returnCreateSession != null) {
      $result.returnCreateSession = returnCreateSession;
    }
    if (returnOffer != null) {
      $result.returnOffer = returnOffer;
    }
    if (returnJoinSession != null) {
      $result.returnJoinSession = returnJoinSession;
    }
    if (returnAnswer != null) {
      $result.returnAnswer = returnAnswer;
    }
    if (returnConfirmAnswer != null) {
      $result.returnConfirmAnswer = returnConfirmAnswer;
    }
    if (returnSend != null) {
      $result.returnSend = returnSend;
    }
    if (returnReady != null) {
      $result.returnReady = returnReady;
    }
    if (returnDropSession != null) {
      $result.returnDropSession = returnDropSession;
    }
    if (returnReloadConfig != null) {
      $result.returnReloadConfig = returnReloadConfig;
    }
    if (returnDiscard != null) {
      $result.returnDiscard = returnDiscard;
    }
    return $result;
  }
  Return._() : super();
  factory Return.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Return.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Return', createEmptyInstance: create)
    ..aOM<ReturnCreateSession>(1, _omitFieldNames ? '' : 'returnCreateSession', protoName: 'returnCreateSession', subBuilder: ReturnCreateSession.create)
    ..aOM<ReturnOffer>(2, _omitFieldNames ? '' : 'returnOffer', protoName: 'returnOffer', subBuilder: ReturnOffer.create)
    ..aOM<ReturnJoinSession>(3, _omitFieldNames ? '' : 'returnJoinSession', protoName: 'returnJoinSession', subBuilder: ReturnJoinSession.create)
    ..aOM<ReturnAnswer>(4, _omitFieldNames ? '' : 'returnAnswer', protoName: 'returnAnswer', subBuilder: ReturnAnswer.create)
    ..aOM<ReturnConfirmAnswer>(5, _omitFieldNames ? '' : 'returnConfirmAnswer', protoName: 'returnConfirmAnswer', subBuilder: ReturnConfirmAnswer.create)
    ..aOM<ReturnSend>(6, _omitFieldNames ? '' : 'returnSend', protoName: 'returnSend', subBuilder: ReturnSend.create)
    ..aOM<ReturnReady>(7, _omitFieldNames ? '' : 'returnReady', protoName: 'returnReady', subBuilder: ReturnReady.create)
    ..aOM<ReturnDropSession>(8, _omitFieldNames ? '' : 'returnDropSession', protoName: 'returnDropSession', subBuilder: ReturnDropSession.create)
    ..aOM<ReturnReloadConfig>(9, _omitFieldNames ? '' : 'returnReloadConfig', protoName: 'returnReloadConfig', subBuilder: ReturnReloadConfig.create)
    ..aOM<ReturnDiscard>(10, _omitFieldNames ? '' : 'returnDiscard', protoName: 'returnDiscard', subBuilder: ReturnDiscard.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Return clone() => Return()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Return copyWith(void Function(Return) updates) => super.copyWith((message) => updates(message as Return)) as Return;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Return create() => Return._();
  Return createEmptyInstance() => create();
  static $pb.PbList<Return> createRepeated() => $pb.PbList<Return>();
  @$core.pragma('dart2js:noInline')
  static Return getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Return>(create);
  static Return? _defaultInstance;

  @$pb.TagNumber(1)
  ReturnCreateSession get returnCreateSession => $_getN(0);
  @$pb.TagNumber(1)
  set returnCreateSession(ReturnCreateSession v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReturnCreateSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearReturnCreateSession() => clearField(1);
  @$pb.TagNumber(1)
  ReturnCreateSession ensureReturnCreateSession() => $_ensure(0);

  @$pb.TagNumber(2)
  ReturnOffer get returnOffer => $_getN(1);
  @$pb.TagNumber(2)
  set returnOffer(ReturnOffer v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasReturnOffer() => $_has(1);
  @$pb.TagNumber(2)
  void clearReturnOffer() => clearField(2);
  @$pb.TagNumber(2)
  ReturnOffer ensureReturnOffer() => $_ensure(1);

  @$pb.TagNumber(3)
  ReturnJoinSession get returnJoinSession => $_getN(2);
  @$pb.TagNumber(3)
  set returnJoinSession(ReturnJoinSession v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasReturnJoinSession() => $_has(2);
  @$pb.TagNumber(3)
  void clearReturnJoinSession() => clearField(3);
  @$pb.TagNumber(3)
  ReturnJoinSession ensureReturnJoinSession() => $_ensure(2);

  @$pb.TagNumber(4)
  ReturnAnswer get returnAnswer => $_getN(3);
  @$pb.TagNumber(4)
  set returnAnswer(ReturnAnswer v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasReturnAnswer() => $_has(3);
  @$pb.TagNumber(4)
  void clearReturnAnswer() => clearField(4);
  @$pb.TagNumber(4)
  ReturnAnswer ensureReturnAnswer() => $_ensure(3);

  @$pb.TagNumber(5)
  ReturnConfirmAnswer get returnConfirmAnswer => $_getN(4);
  @$pb.TagNumber(5)
  set returnConfirmAnswer(ReturnConfirmAnswer v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasReturnConfirmAnswer() => $_has(4);
  @$pb.TagNumber(5)
  void clearReturnConfirmAnswer() => clearField(5);
  @$pb.TagNumber(5)
  ReturnConfirmAnswer ensureReturnConfirmAnswer() => $_ensure(4);

  @$pb.TagNumber(6)
  ReturnSend get returnSend => $_getN(5);
  @$pb.TagNumber(6)
  set returnSend(ReturnSend v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasReturnSend() => $_has(5);
  @$pb.TagNumber(6)
  void clearReturnSend() => clearField(6);
  @$pb.TagNumber(6)
  ReturnSend ensureReturnSend() => $_ensure(5);

  @$pb.TagNumber(7)
  ReturnReady get returnReady => $_getN(6);
  @$pb.TagNumber(7)
  set returnReady(ReturnReady v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasReturnReady() => $_has(6);
  @$pb.TagNumber(7)
  void clearReturnReady() => clearField(7);
  @$pb.TagNumber(7)
  ReturnReady ensureReturnReady() => $_ensure(6);

  @$pb.TagNumber(8)
  ReturnDropSession get returnDropSession => $_getN(7);
  @$pb.TagNumber(8)
  set returnDropSession(ReturnDropSession v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasReturnDropSession() => $_has(7);
  @$pb.TagNumber(8)
  void clearReturnDropSession() => clearField(8);
  @$pb.TagNumber(8)
  ReturnDropSession ensureReturnDropSession() => $_ensure(7);

  @$pb.TagNumber(9)
  ReturnReloadConfig get returnReloadConfig => $_getN(8);
  @$pb.TagNumber(9)
  set returnReloadConfig(ReturnReloadConfig v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasReturnReloadConfig() => $_has(8);
  @$pb.TagNumber(9)
  void clearReturnReloadConfig() => clearField(9);
  @$pb.TagNumber(9)
  ReturnReloadConfig ensureReturnReloadConfig() => $_ensure(8);

  @$pb.TagNumber(10)
  ReturnDiscard get returnDiscard => $_getN(9);
  @$pb.TagNumber(10)
  set returnDiscard(ReturnDiscard v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasReturnDiscard() => $_has(9);
  @$pb.TagNumber(10)
  void clearReturnDiscard() => clearField(10);
  @$pb.TagNumber(10)
  ReturnDiscard ensureReturnDiscard() => $_ensure(9);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
