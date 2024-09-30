import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EventWebView extends StatefulWidget {
  const EventWebView({
    super.key,
    this.url = "",
  });

  final String url;

  @override
  State<EventWebView> createState() => _EventWebViewState();
}

class _EventWebViewState extends State<EventWebView> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_location_alt_outlined),
          ),
        ],
        // X, 하트, 주말 추가 버튼
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
