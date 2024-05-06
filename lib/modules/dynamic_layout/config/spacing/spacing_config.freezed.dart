// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spacing_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpacingConfig _$SpacingConfigFromJson(Map<String, dynamic> json) {
  return _SpacingConfig.fromJson(json);
}

/// @nodoc
mixin _$SpacingConfig {
  @JsonKey(name: 'margin')
  EdgeConfig? get marginConfig => throw _privateConstructorUsedError;
  @JsonKey(name: 'padding')
  EdgeConfig? get paddingConfig => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpacingConfigCopyWith<SpacingConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpacingConfigCopyWith<$Res> {
  factory $SpacingConfigCopyWith(
          SpacingConfig value, $Res Function(SpacingConfig) then) =
      _$SpacingConfigCopyWithImpl<$Res, SpacingConfig>;
  @useResult
  $Res call(
      {@JsonKey(name: 'margin') EdgeConfig? marginConfig,
      @JsonKey(name: 'padding') EdgeConfig? paddingConfig});

  $EdgeConfigCopyWith<$Res>? get marginConfig;
  $EdgeConfigCopyWith<$Res>? get paddingConfig;
}

/// @nodoc
class _$SpacingConfigCopyWithImpl<$Res, $Val extends SpacingConfig>
    implements $SpacingConfigCopyWith<$Res> {
  _$SpacingConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marginConfig = freezed,
    Object? paddingConfig = freezed,
  }) {
    return _then(_value.copyWith(
      marginConfig: freezed == marginConfig
          ? _value.marginConfig
          : marginConfig // ignore: cast_nullable_to_non_nullable
              as EdgeConfig?,
      paddingConfig: freezed == paddingConfig
          ? _value.paddingConfig
          : paddingConfig // ignore: cast_nullable_to_non_nullable
              as EdgeConfig?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EdgeConfigCopyWith<$Res>? get marginConfig {
    if (_value.marginConfig == null) {
      return null;
    }

    return $EdgeConfigCopyWith<$Res>(_value.marginConfig!, (value) {
      return _then(_value.copyWith(marginConfig: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EdgeConfigCopyWith<$Res>? get paddingConfig {
    if (_value.paddingConfig == null) {
      return null;
    }

    return $EdgeConfigCopyWith<$Res>(_value.paddingConfig!, (value) {
      return _then(_value.copyWith(paddingConfig: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SpacingConfigCopyWith<$Res>
    implements $SpacingConfigCopyWith<$Res> {
  factory _$$_SpacingConfigCopyWith(
          _$_SpacingConfig value, $Res Function(_$_SpacingConfig) then) =
      __$$_SpacingConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'margin') EdgeConfig? marginConfig,
      @JsonKey(name: 'padding') EdgeConfig? paddingConfig});

  @override
  $EdgeConfigCopyWith<$Res>? get marginConfig;
  @override
  $EdgeConfigCopyWith<$Res>? get paddingConfig;
}

/// @nodoc
class __$$_SpacingConfigCopyWithImpl<$Res>
    extends _$SpacingConfigCopyWithImpl<$Res, _$_SpacingConfig>
    implements _$$_SpacingConfigCopyWith<$Res> {
  __$$_SpacingConfigCopyWithImpl(
      _$_SpacingConfig _value, $Res Function(_$_SpacingConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marginConfig = freezed,
    Object? paddingConfig = freezed,
  }) {
    return _then(_$_SpacingConfig(
      marginConfig: freezed == marginConfig
          ? _value.marginConfig
          : marginConfig // ignore: cast_nullable_to_non_nullable
              as EdgeConfig?,
      paddingConfig: freezed == paddingConfig
          ? _value.paddingConfig
          : paddingConfig // ignore: cast_nullable_to_non_nullable
              as EdgeConfig?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpacingConfig with DiagnosticableTreeMixin implements _SpacingConfig {
  const _$_SpacingConfig(
      {@JsonKey(name: 'margin') this.marginConfig,
      @JsonKey(name: 'padding') this.paddingConfig});

  factory _$_SpacingConfig.fromJson(Map<String, dynamic> json) =>
      _$$_SpacingConfigFromJson(json);

  @override
  @JsonKey(name: 'margin')
  final EdgeConfig? marginConfig;
  @override
  @JsonKey(name: 'padding')
  final EdgeConfig? paddingConfig;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpacingConfig(marginConfig: $marginConfig, paddingConfig: $paddingConfig)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpacingConfig'))
      ..add(DiagnosticsProperty('marginConfig', marginConfig))
      ..add(DiagnosticsProperty('paddingConfig', paddingConfig));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpacingConfig &&
            (identical(other.marginConfig, marginConfig) ||
                other.marginConfig == marginConfig) &&
            (identical(other.paddingConfig, paddingConfig) ||
                other.paddingConfig == paddingConfig));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, marginConfig, paddingConfig);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpacingConfigCopyWith<_$_SpacingConfig> get copyWith =>
      __$$_SpacingConfigCopyWithImpl<_$_SpacingConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpacingConfigToJson(
      this,
    );
  }
}

abstract class _SpacingConfig implements SpacingConfig {
  const factory _SpacingConfig(
          {@JsonKey(name: 'margin') final EdgeConfig? marginConfig,
          @JsonKey(name: 'padding') final EdgeConfig? paddingConfig}) =
      _$_SpacingConfig;

  factory _SpacingConfig.fromJson(Map<String, dynamic> json) =
      _$_SpacingConfig.fromJson;

  @override
  @JsonKey(name: 'margin')
  EdgeConfig? get marginConfig;
  @override
  @JsonKey(name: 'padding')
  EdgeConfig? get paddingConfig;
  @override
  @JsonKey(ignore: true)
  _$$_SpacingConfigCopyWith<_$_SpacingConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
