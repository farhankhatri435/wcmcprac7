//@dart=2.9
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Page4 extends StatefulWidget {
  final url;
  Page4(this.url);
  @override
  createState() => _Page4State(this.url);
}

class _Page4State extends State<Page4> {
  String _url;
  final _key = UniqueKey();
  _Page4State(this._url);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
          key: _key,
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: _url),
    );
  }
}
