// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spacing_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpacingConfig _$$_SpacingConfigFromJson(Map<String, dynamic> json) =>
    _$_SpacingConfig(
      marginConfig: json['margin'] == null
          ? null
          : EdgeConfig.fromJson(json['margin'] as Map<String, dynamic>),
      paddingConfig: json['padding'] == null
          ? null
          : EdgeConfig.fromJson(json['padding'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SpacingConfigToJson(_$_SpacingConfig instance) =>
    <String, dynamic>{
      'margin': instance.marginConfig?.toJson(),
      'padding': instance.paddingConfig?.toJson(),
    };
