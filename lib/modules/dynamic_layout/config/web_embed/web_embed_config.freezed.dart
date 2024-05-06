// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_embed_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WebEmbedConfig _$WebEmbedConfigFromJson(Map<String, dynamic> json) {
  return _WebEmbedConfig.fromJson(json);
}

/// @nodoc
mixin _$WebEmbedConfig {
  /// Url or iFrame or HTML code
  WebEmbedType get type => throw _privateConstructorUsedError;

  /// Data to load in the webview
  String get data => throw _privateConstructorUsedError;

  /// If the height value is less than 1, it will be automatically calculated
  /// according to the formula [height]*[MediaQuery.sizeOf(context).height],
  /// which is a percentage * the height of the screen. Otherwise, it will be
  /// set to a fixed height.
  double get height => throw _privateConstructorUsedError;

  /// Only padding, margin is supported in this layout
  SpacingConfig get spacing => throw _privateConstructorUsedError;

  /// If does not set, it can use the default script
  /// [kAdvanceConfig.webViewScript] from [advanceConfig] in env.dart file instead
  String? get script => throw _privateConstructorUsedError;

  /// Navigate options
  Map<String, dynamic>? get navigator => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebEmbedConfigCopyWith<WebEmbedConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebEmbedConfigCopyWith<$Res> {
  factory $WebEmbedConfigCopyWith(
          WebEmbedConfig value, $Res Function(WebEmbedConfig) then) =
      _$WebEmbedConfigCopyWithImpl<$Res, WebEmbedConfig>;
  @useResult
  $Res call(
      {WebEmbedType type,
      String data,
      double height,
      SpacingConfig spacing,
      String? script,
      Map<String, dynamic>? navigator});

  $SpacingConfigCopyWith<$Res> get spacing;
}

/// @nodoc
class _$WebEmbedConfigCopyWithImpl<$Res, $Val extends WebEmbedConfig>
    implements $WebEmbedConfigCopyWith<$Res> {
  _$WebEmbedConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? data = null,
    Object? height = null,
    Object? spacing = null,
    Object? script = freezed,
    Object? navigator = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WebEmbedType,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      spacing: null == spacing
          ? _value.spacing
          : spacing // ignore: cast_nullable_to_non_nullable
              as SpacingConfig,
      script: freezed == script
          ? _value.script
          : script // ignore: cast_nullable_to_non_nullable
              as String?,
      navigator: freezed == navigator
          ? _value.navigator
          : navigator // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpacingConfigCopyWith<$Res> get spacing {
    return $SpacingConfigCopyWith<$Res>(_value.spacing, (value) {
      return _then(_value.copyWith(spacing: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WebEmbedConfigCopyWith<$Res>
    implements $WebEmbedConfigCopyWith<$Res> {
  factory _$$_WebEmbedConfigCopyWith(
          _$_WebEmbedConfig value, $Res Function(_$_WebEmbedConfig) then) =
      __$$_WebEmbedConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WebEmbedType type,
      String data,
      double height,
      SpacingConfig spacing,
      String? script,
      Map<String, dynamic>? navigator});

  @override
  $SpacingConfigCopyWith<$Res> get spacing;
}

/// @nodoc
class __$$_WebEmbedConfigCopyWithImpl<$Res>
    extends _$WebEmbedConfigCopyWithImpl<$Res, _$_WebEmbedConfig>
    implements _$$_WebEmbedConfigCopyWith<$Res> {
  __$$_WebEmbedConfigCopyWithImpl(
      _$_WebEmbedConfig _value, $Res Function(_$_WebEmbedConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? data = null,
    Object? height = null,
    Object? spacing = null,
    Object? script = freezed,
    Object? navigator = freezed,
  }) {
    return _then(_$_WebEmbedConfig(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WebEmbedType,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      spacing: null == spacing
          ? _value.spacing
          : spacing // ignore: cast_nullable_to_non_nullable
              as SpacingConfig,
      script: freezed == script
          ? _value.script
          : script // ignore: cast_nullable_to_non_nullable
              as String?,
      navigator: freezed == navigator
          ? _value._navigator
          : navigator // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WebEmbedConfig
    with DiagnosticableTreeMixin
    implements _WebEmbedConfig {
  const _$_WebEmbedConfig(
      {this.type = WebEmbedType.url,
      this.data = '',
      this.height = _defaultHeight,
      this.spacing = const SpacingConfig(),
      this.script,
      final Map<String, dynamic>? navigator})
      : assert(height > 0),
        _navigator = navigator;

  factory _$_WebEmbedConfig.fromJson(Map<String, dynamic> json) =>
      _$$_WebEmbedConfigFromJson(json);

  /// Url or iFrame or HTML code
  @override
  @JsonKey()
  final WebEmbedType type;

  /// Data to load in the webview
  @override
  @JsonKey()
  final String data;

  /// If the height value is less than 1, it will be automatically calculated
  /// according to the formula [height]*[MediaQuery.sizeOf(context).height],
  /// which is a percentage * the height of the screen. Otherwise, it will be
  /// set to a fixed height.
  @override
  @JsonKey()
  final double height;

  /// Only padding, margin is supported in this layout
  @override
  @JsonKey()
  final SpacingConfig spacing;

  /// If does not set, it can use the default script
  /// [kAdvanceConfig.webViewScript] from [advanceConfig] in env.dart file instead
  @override
  final String? script;

  /// Navigate options
  final Map<String, dynamic>? _navigator;

  /// Navigate options
  @override
  Map<String, dynamic>? get navigator {
    final value = _navigator;
    if (value == null) return null;
    if (_navigator is EqualUnmodifiableMapView) return _navigator;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WebEmbedConfig(type: $type, data: $data, height: $height, spacing: $spacing, script: $script, navigator: $navigator)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WebEmbedConfig'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('spacing', spacing))
      ..add(DiagnosticsProperty('script', script))
      ..add(DiagnosticsProperty('navigator', navigator));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebEmbedConfig &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.spacing, spacing) || other.spacing == spacing) &&
            (identical(other.script, script) || other.script == script) &&
            const DeepCollectionEquality()
                .equals(other._navigator, _navigator));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, data, height, spacing,
      script, const DeepCollectionEquality().hash(_navigator));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WebEmbedConfigCopyWith<_$_WebEmbedConfig> get copyWith =>
      __$$_WebEmbedConfigCopyWithImpl<_$_WebEmbedConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WebEmbedConfigToJson(
      this,
    );
  }
}

abstract class _WebEmbedConfig implements WebEmbedConfig {
  const factory _WebEmbedConfig(
      {final WebEmbedType type,
      final String data,
      final double height,
      final SpacingConfig spacing,
      final String? script,
      final Map<String, dynamic>? navigator}) = _$_WebEmbedConfig;

  factory _WebEmbedConfig.fromJson(Map<String, dynamic> json) =
      _$_WebEmbedConfig.fromJson;

  @override

  /// Url or iFrame or HTML code
  WebEmbedType get type;
  @override

  /// Data to load in the webview
  String get data;
  @override

  /// If the height value is less than 1, it will be automatically calculated
  /// according to the formula [height]*[MediaQuery.sizeOf(context).height],
  /// which is a percentage * the height of the screen. Otherwise, it will be
  /// set to a fixed height.
  double get height;
  @override

  /// Only padding, margin is supported in this layout
  SpacingConfig get spacing;
  @override

  /// If does not set, it can use the default script
  /// [kAdvanceConfig.webViewScript] from [advanceConfig] in env.dart file instead
  String? get script;
  @override

  /// Navigate options
  Map<String, dynamic>? get navigator;
  @override
  @JsonKey(ignore: true)
  _$$_WebEmbedConfigCopyWith<_$_WebEmbedConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
