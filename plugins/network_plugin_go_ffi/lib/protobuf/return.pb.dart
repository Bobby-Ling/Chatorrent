//
//  Generated code. Do not modify.
//  source: return.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'error.pb.dart' as $0;
import 'ready.pb.dart' as $1;

class Return extends $pb.GeneratedMessage {
  factory Return({
    $0.Error? err,
    ReturnCreateSession? createSessionReturn,
    ReturnOffer? offerReturn,
    ReturnJoinSession? joinSessionReturn,
    ReturnAnswer? answerReturn,
    ReturnConfirmAnswer? confirmAnswerReturn,
    ReturnSend? sendReturn,
    ReturnReady? readyReturn,
    ReturnDropSession? dropSessionReturn,
    ReturnReloadConfig? reloadConfigReturn,
    ReturnDiscard? discardReturn,
  }) {
    final $result = create();
    if (err != null) {
      $result.err = err;
    }
    if (createSessionReturn != null) {
      $result.createSessionReturn = createSessionReturn;
    }
    if (offerReturn != null) {
      $result.offerReturn = offerReturn;
    }
    if (joinSessionReturn != null) {
      $result.joinSessionReturn = joinSessionReturn;
    }
    if (answerReturn != null) {
      $result.answerReturn = answerReturn;
    }
    if (confirmAnswerReturn != null) {
      $result.confirmAnswerReturn = confirmAnswerReturn;
    }
    if (sendReturn != null) {
      $result.sendReturn = sendReturn;
    }
    if (readyReturn != null) {
      $result.readyReturn = readyReturn;
    }
    if (dropSessionReturn != null) {
      $result.dropSessionReturn = dropSessionReturn;
    }
    if (reloadConfigReturn != null) {
      $result.reloadConfigReturn = reloadConfigReturn;
    }
    if (discardReturn != null) {
      $result.discardReturn = discardReturn;
    }
    return $result;
  }
  Return._() : super();
  factory Return.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Return.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Return', createEmptyInstance: create)
    ..aOM<$0.Error>(1, _omitFieldNames ? '' : 'err', subBuilder: $0.Error.create)
    ..aOM<ReturnCreateSession>(2, _omitFieldNames ? '' : 'createSessionReturn', subBuilder: ReturnCreateSession.create)
    ..aOM<ReturnOffer>(3, _omitFieldNames ? '' : 'offerReturn', subBuilder: ReturnOffer.create)
    ..aOM<ReturnJoinSession>(4, _omitFieldNames ? '' : 'joinSessionReturn', subBuilder: ReturnJoinSession.create)
    ..aOM<ReturnAnswer>(5, _omitFieldNames ? '' : 'answerReturn', subBuilder: ReturnAnswer.create)
    ..aOM<ReturnConfirmAnswer>(6, _omitFieldNames ? '' : 'confirmAnswerReturn', subBuilder: ReturnConfirmAnswer.create)
    ..aOM<ReturnSend>(7, _omitFieldNames ? '' : 'sendReturn', subBuilder: ReturnSend.create)
    ..aOM<ReturnReady>(8, _omitFieldNames ? '' : 'readyReturn', subBuilder: ReturnReady.create)
    ..aOM<ReturnDropSession>(9, _omitFieldNames ? '' : 'dropSessionReturn', subBuilder: ReturnDropSession.create)
    ..aOM<ReturnReloadConfig>(10, _omitFieldNames ? '' : 'reloadConfigReturn', subBuilder: ReturnReloadConfig.create)
    ..aOM<ReturnDiscard>(11, _omitFieldNames ? '' : 'discardReturn', subBuilder: ReturnDiscard.create)
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
  $0.Error get err => $_getN(0);
  @$pb.TagNumber(1)
  set err($0.Error v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasErr() => $_has(0);
  @$pb.TagNumber(1)
  void clearErr() => clearField(1);
  @$pb.TagNumber(1)
  $0.Error ensureErr() => $_ensure(0);

  @$pb.TagNumber(2)
  ReturnCreateSession get createSessionReturn => $_getN(1);
  @$pb.TagNumber(2)
  set createSessionReturn(ReturnCreateSession v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreateSessionReturn() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreateSessionReturn() => clearField(2);
  @$pb.TagNumber(2)
  ReturnCreateSession ensureCreateSessionReturn() => $_ensure(1);

  @$pb.TagNumber(3)
  ReturnOffer get offerReturn => $_getN(2);
  @$pb.TagNumber(3)
  set offerReturn(ReturnOffer v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOfferReturn() => $_has(2);
  @$pb.TagNumber(3)
  void clearOfferReturn() => clearField(3);
  @$pb.TagNumber(3)
  ReturnOffer ensureOfferReturn() => $_ensure(2);

  @$pb.TagNumber(4)
  ReturnJoinSession get joinSessionReturn => $_getN(3);
  @$pb.TagNumber(4)
  set joinSessionReturn(ReturnJoinSession v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasJoinSessionReturn() => $_has(3);
  @$pb.TagNumber(4)
  void clearJoinSessionReturn() => clearField(4);
  @$pb.TagNumber(4)
  ReturnJoinSession ensureJoinSessionReturn() => $_ensure(3);

  @$pb.TagNumber(5)
  ReturnAnswer get answerReturn => $_getN(4);
  @$pb.TagNumber(5)
  set answerReturn(ReturnAnswer v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAnswerReturn() => $_has(4);
  @$pb.TagNumber(5)
  void clearAnswerReturn() => clearField(5);
  @$pb.TagNumber(5)
  ReturnAnswer ensureAnswerReturn() => $_ensure(4);

  @$pb.TagNumber(6)
  ReturnConfirmAnswer get confirmAnswerReturn => $_getN(5);
  @$pb.TagNumber(6)
  set confirmAnswerReturn(ReturnConfirmAnswer v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasConfirmAnswerReturn() => $_has(5);
  @$pb.TagNumber(6)
  void clearConfirmAnswerReturn() => clearField(6);
  @$pb.TagNumber(6)
  ReturnConfirmAnswer ensureConfirmAnswerReturn() => $_ensure(5);

  @$pb.TagNumber(7)
  ReturnSend get sendReturn => $_getN(6);
  @$pb.TagNumber(7)
  set sendReturn(ReturnSend v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSendReturn() => $_has(6);
  @$pb.TagNumber(7)
  void clearSendReturn() => clearField(7);
  @$pb.TagNumber(7)
  ReturnSend ensureSendReturn() => $_ensure(6);

  @$pb.TagNumber(8)
  ReturnReady get readyReturn => $_getN(7);
  @$pb.TagNumber(8)
  set readyReturn(ReturnReady v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasReadyReturn() => $_has(7);
  @$pb.TagNumber(8)
  void clearReadyReturn() => clearField(8);
  @$pb.TagNumber(8)
  ReturnReady ensureReadyReturn() => $_ensure(7);

  @$pb.TagNumber(9)
  ReturnDropSession get dropSessionReturn => $_getN(8);
  @$pb.TagNumber(9)
  set dropSessionReturn(ReturnDropSession v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasDropSessionReturn() => $_has(8);
  @$pb.TagNumber(9)
  void clearDropSessionReturn() => clearField(9);
  @$pb.TagNumber(9)
  ReturnDropSession ensureDropSessionReturn() => $_ensure(8);

  @$pb.TagNumber(10)
  ReturnReloadConfig get reloadConfigReturn => $_getN(9);
  @$pb.TagNumber(10)
  set reloadConfigReturn(ReturnReloadConfig v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasReloadConfigReturn() => $_has(9);
  @$pb.TagNumber(10)
  void clearReloadConfigReturn() => clearField(10);
  @$pb.TagNumber(10)
  ReturnReloadConfig ensureReloadConfigReturn() => $_ensure(9);

  @$pb.TagNumber(11)
  ReturnDiscard get discardReturn => $_getN(10);
  @$pb.TagNumber(11)
  set discardReturn(ReturnDiscard v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasDiscardReturn() => $_has(10);
  @$pb.TagNumber(11)
  void clearDiscardReturn() => clearField(11);
  @$pb.TagNumber(11)
  ReturnDiscard ensureDiscardReturn() => $_ensure(10);
}

class ReturnCreateSession extends $pb.GeneratedMessage {
  factory ReturnCreateSession() => create();
  ReturnCreateSession._() : super();
  factory ReturnCreateSession.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReturnCreateSession.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnCreateSession', createEmptyInstance: create)
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
}

class ReturnOffer extends $pb.GeneratedMessage {
  factory ReturnOffer({
    $core.String? offerBase64,
  }) {
    final $result = create();
    if (offerBase64 != null) {
      $result.offerBase64 = offerBase64;
    }
    return $result;
  }
  ReturnOffer._() : super();
  factory ReturnOffer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReturnOffer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnOffer', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'offerBase64')
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
  $core.String get offerBase64 => $_getSZ(0);
  @$pb.TagNumber(1)
  set offerBase64($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOfferBase64() => $_has(0);
  @$pb.TagNumber(1)
  void clearOfferBase64() => clearField(1);
}

class ReturnJoinSession extends $pb.GeneratedMessage {
  factory ReturnJoinSession() => create();
  ReturnJoinSession._() : super();
  factory ReturnJoinSession.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReturnJoinSession.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnJoinSession', createEmptyInstance: create)
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
}

class ReturnAnswer extends $pb.GeneratedMessage {
  factory ReturnAnswer({
    $core.String? answerBase64,
  }) {
    final $result = create();
    if (answerBase64 != null) {
      $result.answerBase64 = answerBase64;
    }
    return $result;
  }
  ReturnAnswer._() : super();
  factory ReturnAnswer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReturnAnswer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnAnswer', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'answerBase64')
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
  $core.String get answerBase64 => $_getSZ(0);
  @$pb.TagNumber(1)
  set answerBase64($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAnswerBase64() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnswerBase64() => clearField(1);
}

class ReturnConfirmAnswer extends $pb.GeneratedMessage {
  factory ReturnConfirmAnswer() => create();
  ReturnConfirmAnswer._() : super();
  factory ReturnConfirmAnswer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReturnConfirmAnswer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnConfirmAnswer', createEmptyInstance: create)
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
}

class ReturnSend extends $pb.GeneratedMessage {
  factory ReturnSend() => create();
  ReturnSend._() : super();
  factory ReturnSend.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReturnSend.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnSend', createEmptyInstance: create)
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
}

class ReturnReady extends $pb.GeneratedMessage {
  factory ReturnReady({
    $core.Iterable<$1.Ready>? readyList,
  }) {
    final $result = create();
    if (readyList != null) {
      $result.readyList.addAll(readyList);
    }
    return $result;
  }
  ReturnReady._() : super();
  factory ReturnReady.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReturnReady.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnReady', createEmptyInstance: create)
    ..pc<$1.Ready>(1, _omitFieldNames ? '' : 'readyList', $pb.PbFieldType.PM, subBuilder: $1.Ready.create)
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
  $core.List<$1.Ready> get readyList => $_getList(0);
}

class ReturnDropSession extends $pb.GeneratedMessage {
  factory ReturnDropSession() => create();
  ReturnDropSession._() : super();
  factory ReturnDropSession.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReturnDropSession.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnDropSession', createEmptyInstance: create)
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
}

class ReturnReloadConfig extends $pb.GeneratedMessage {
  factory ReturnReloadConfig() => create();
  ReturnReloadConfig._() : super();
  factory ReturnReloadConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReturnReloadConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnReloadConfig', createEmptyInstance: create)
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
}

class ReturnDiscard extends $pb.GeneratedMessage {
  factory ReturnDiscard() => create();
  ReturnDiscard._() : super();
  factory ReturnDiscard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReturnDiscard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnDiscard', createEmptyInstance: create)
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
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
