import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'edge_config.dart';

export 'edge_config.dart';

part 'spacing_config.freezed.dart';
part 'spacing_config.g.dart';

@freezed
class SpacingConfig with _$SpacingConfig {
  const factory SpacingConfig({
    @JsonKey(name: 'margin') EdgeConfig? marginConfig,
    @JsonKey(name: 'padding') EdgeConfig? paddingConfig,
  }) = _SpacingConfig;

  factory SpacingConfig.fromJson(Map<String, dynamic> json) =>
      _$SpacingConfigFromJson(json);

  static SpacingConfig get zero => SpacingConfig(
        marginConfig: EdgeConfig.zero,
        paddingConfig: EdgeConfig.zero,
      );
}
