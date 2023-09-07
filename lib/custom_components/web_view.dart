import 'package:flutter/material.dart';import 'package:webview_flutter/webview_flutter.dart';

import 'custom_appbar.dart';

// ignore: must_be_immutable
class WebView extends StatelessWidget {
   WebView({super.key,required this.title,required this.url});
final String title;
  final String url;
 late WebViewController controller;
  @override
  Widget build(BuildContext context) {
    initializeController();
    return Scaffold(
      appBar: CustomAppBar(),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }

  void initializeController() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {
            print('On page start');
          },
          onPageFinished: (String url) {
            print('on page finished');
          },
          onWebResourceError: (WebResourceError error) {
            print(' on page error $error');
          },
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(url));
  }
  }
