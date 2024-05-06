import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../spacing/spacing_config.dart';
import 'web_embed_type.dart';

export 'web_embed_type.dart';

part 'web_embed_config.freezed.dart';
part 'web_embed_config.g.dart';

const _defaultHeight = 200.0;

@freezed
class WebEmbedConfig with _$WebEmbedConfig {
  @Assert('height > 0')
  const factory WebEmbedConfig({
    /// Url or iFrame or HTML code
    @Default(WebEmbedType.url) WebEmbedType type,

    /// Data to load in the webview
    @Default('') String data,

    /// If the height value is less than 1, it will be automatically calculated
    /// according to the formula [height]*[MediaQuery.sizeOf(context).height],
    /// which is a percentage * the height of the screen. Otherwise, it will be
    /// set to a fixed height.
    @Default(_defaultHeight) double height,

    /// Only padding, margin is supported in this layout
    @Default(SpacingConfig()) SpacingConfig spacing,

    /// If does not set, it can use the default script
    /// [kAdvanceConfig.webViewScript] from [advanceConfig] in env.dart file instead
    String? script,

    /// Navigate options
    Map<String, dynamic>? navigator,
  }) = _WebEmbedConfig;

  factory WebEmbedConfig.fromJson(Map<String, dynamic> json) =>
      _$WebEmbedConfigFromJson(json);
}
