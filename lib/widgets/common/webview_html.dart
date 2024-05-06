import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../common/tools.dart';

class WebviewHtml extends StatefulWidget {
  final String html;
  final String? script;
  final FutureOr<NavigationDecision> Function(NavigationRequest request)?
      onNavigationRequest;

  const WebviewHtml({
    super.key,
    required this.html,
    this.script,
    this.onNavigationRequest,
  });

  @override
  State<WebviewHtml> createState() => _WebviewHtmlState();
}

class _WebviewHtmlState extends State<WebviewHtml> {
  late final WebViewController controller;

  void onFinishLoading() {
    if (!widget.script.isEmptyOrNull) {
      controller.runJavaScript(widget.script!);
    }
  }

  @override
  void initState() {
    super.initState();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            if (progress == 100) {
              onFinishLoading();
            }
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: widget.onNavigationRequest,
        ),
      )
      // Use [loadHtmlString] instead of [loadRequest] - https://pub.dev/packages/webview_flutter#setting-custom-headers-on-post-requests
      ..loadHtmlString(widget.html);
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: controller);
  }
}
