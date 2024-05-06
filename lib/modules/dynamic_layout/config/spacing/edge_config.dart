import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edge_config.freezed.dart';
part 'edge_config.g.dart';

@freezed
class EdgeConfig with _$EdgeConfig {
  const factory EdgeConfig({
    @JsonKey(name: 'start', readValue: _EdgeConfigHelper.parseOldConfig)
    double? start,
    @JsonKey(name: 'end', readValue: _EdgeConfigHelper.parseOldConfig)
    double? end,
    double? top,
    double? bottom,
  }) = _EdgeConfig;

  factory EdgeConfig.fromJson(Map<String, dynamic> json) =>
      _$EdgeConfigFromJson(json);

  static EdgeConfig get zero => const EdgeConfig(
        start: 0.0,
        end: 0.0,
        top: 0.0,
        bottom: 0.0,
      );
}

class _EdgeConfigHelper {
  /// Support load the old config data.
  static dynamic parseOldConfig(Map json, String key) {
    if (key == 'start') {
      return json['start'] ?? json['left'];
    } else if (key == 'end') {
      return json['end'] ?? json['right'];
    }

    return json[key];
  }
}
