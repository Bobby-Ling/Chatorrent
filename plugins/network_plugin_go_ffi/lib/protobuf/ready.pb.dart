//
//  Generated code. Do not modify.
//  source: ready.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Ready extends $pb.GeneratedMessage {
  factory Ready({
    $core.int? sessionID,
    $core.List<$core.int>? dAtA,
  }) {
    final $result = create();
    if (sessionID != null) {
      $result.sessionID = sessionID;
    }
    if (dAtA != null) {
      $result.dAtA = dAtA;
    }
    return $result;
  }
  Ready._() : super();
  factory Ready.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ready.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Ready', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'SessionID', $pb.PbFieldType.O3, protoName: 'SessionID')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'dAtA', $pb.PbFieldType.OY, protoName: 'dAtA')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Ready clone() => Ready()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Ready copyWith(void Function(Ready) updates) => super.copyWith((message) => updates(message as Ready)) as Ready;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Ready create() => Ready._();
  Ready createEmptyInstance() => create();
  static $pb.PbList<Ready> createRepeated() => $pb.PbList<Ready>();
  @$core.pragma('dart2js:noInline')
  static Ready getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ready>(create);
  static Ready? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionID => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionID($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionID() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionID() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get dAtA => $_getN(1);
  @$pb.TagNumber(2)
  set dAtA($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDAtA() => $_has(1);
  @$pb.TagNumber(2)
  void clearDAtA() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
