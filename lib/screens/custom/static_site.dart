import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../common/constants.dart';
import '../../widgets/common/webview_html.dart';
import '../common/app_bar_mixin.dart';

class StaticSite extends StatefulWidget {
  final String? data;

  const StaticSite({this.data});

  @override
  State<StaticSite> createState() => _StaticSiteState();
}

class _StaticSiteState extends State<StaticSite> with AppBarMixin {
  String convertToHtml() {
    var value = widget.data ?? '';
    if (value.isEmpty) return '';
    try {
      return const Utf8Decoder().convert(base64Decode(value));
    } catch (e) {
      return value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return renderScaffold(
      routeName: RouteList.html,
      child: SafeArea(
        child: WebviewHtml(
          html: convertToHtml(),
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      ),
    );
  }
}
