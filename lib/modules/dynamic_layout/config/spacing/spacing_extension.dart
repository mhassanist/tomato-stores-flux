import 'package:flutter/widgets.dart';

import 'spacing_config.dart';

extension SpacingConfigExtension on SpacingConfig {
  EdgeInsetsDirectional? get margin => marginConfig?.toEdgeInsetsDirectional();

  EdgeInsetsDirectional? get padding =>
      paddingConfig?.toEdgeInsetsDirectional();
}

extension SpacingExtension on EdgeConfig {
  EdgeInsetsDirectional toEdgeInsetsDirectional() {
    return EdgeInsetsDirectional.only(
      start: start ?? 0.0,
      end: end ?? 0.0,
      top: top ?? 0.0,
      bottom: bottom ?? 0.0,
    );
  }
}
