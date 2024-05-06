class DividerConfig {
  late final num thickness;
  late final num indent;
  late final num endIndent;
  late final String? color;
  late final bool enableBackground;

  DividerConfig({
    this.thickness = 1.0,
    this.indent = 0.0,
    this.endIndent = 0.0,
    this.color,
    this.enableBackground = false,
  });

  DividerConfig.fromJson(dynamic json) {
    thickness = json['thickness'] ?? 1.0;
    indent = json['indent'] ?? 0.0;
    endIndent = json['endIndent'] ?? 0.0;
    color = json['color'];
    enableBackground = json['enableBackground'] ?? false;
  }

  DividerConfig copyWith({
    num? thickness,
    num? indent,
    num? endIndent,
    String? color,
    bool? enableBackground,
  }) {
    return DividerConfig(
      thickness: thickness ?? this.thickness,
      indent: indent ?? this.indent,
      endIndent: endIndent ?? this.endIndent,
      color: color ?? this.color,
      enableBackground: enableBackground ?? this.enableBackground,
    );
  }
}
