import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/config.dart';
import '../../common/constants.dart';
import '../../models/user_model.dart';
import '../../widgets/common/index.dart';

class WebViewScreen extends StatefulWidget {
  final String? title;
  final String? url;
  final String script;
  final bool enableForward;
  final bool enableBackward;
  final bool enableClose;

  /// is determine if include cookie/session into WebView URL
  final bool auth;

  const WebViewScreen({
    this.title,
    this.auth = false,
    this.script = '',
    this.enableForward = true,
    this.enableBackward = true,
    this.enableClose = true,
    required this.url,
  });

  @override
  State<WebViewScreen> createState() => _StateWebViewScreen();
}

class _StateWebViewScreen extends State<WebViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Selector<UserModel, String?>(
        selector: (context, model) => model.user?.cookie,
        shouldRebuild: (prev, next) => prev != next,
        builder: (_, cookie, __) {
          var url = widget.url ?? '';

          /// Loading if the Auth cookie is active but URL not changed
          if (url.isEmpty || (widget.auth && cookie == null)) {
            return Center(child: kLoadingWidget(context));
          }
          if (widget.auth && cookie != null) {
            var base64Str = EncodeUtils.encodeCookie(cookie);
            url += '?cookie=$base64Str';
          }
          return WebView(
            key: Key('webview-$cookie'),
            url: url,
            title: widget.title,
            enableForward: widget.enableForward,
            enableBackward: widget.enableBackward,
            enableClose: Navigator.canPop(context) && widget.enableClose,
            script: widget.script.isEmptyOrNull
                ? kAdvanceConfig.webViewScript
                : widget.script,
            routeName: RouteList.page,
          );
        });
  }
}
