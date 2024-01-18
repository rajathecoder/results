import 'package:flutter/material.dart';
import 'package:results/designs/designs.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SslcResult extends StatefulWidget {
  const SslcResult({Key? key}) : super(key: key);

  @override
  State<SslcResult> createState() => _SslcResultState();
}

class _SslcResultState extends State<SslcResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SSLC"),
        backgroundColor: Color.fromRGBO(95, 49, 125,2) ,
      ),
      body: Container(
        height: sHeight(100, context),
        width: sWidth(100, context),
        child: WebView(
          initialUrl: "https://tnresults.nic.in/arcxrs.htm",
        ),
      ),
    );
  }
}


class Hsc1Result extends StatefulWidget {
  const Hsc1Result({Key? key}) : super(key: key);

  @override
  State<Hsc1Result> createState() => _Hsc1ResultState();
}

class _Hsc1ResultState extends State<Hsc1Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HSC +1"),
        backgroundColor: Color.fromRGBO(95, 49, 125,2) ,
      ),
      body: Container(
        height: sHeight(100, context),
        width: sWidth(100, context),
        child: WebView(
          initialUrl: "https://tnresults.nic.in/acpqrfy.htm",
        ),
      ),
    );
  }
}


class Hsc2Result extends StatefulWidget {
  const Hsc2Result({Key? key}) : super(key: key);

  @override
  State<Hsc2Result> createState() => _Hsc2ResultState();
}

class _Hsc2ResultState extends State<Hsc2Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HSC +2"),
        backgroundColor: Color.fromRGBO(95, 49, 125,2) ,
      ),
      body: Container(
        height: sHeight(100, context),
        width: sWidth(100, context),
        child: WebView(
          initialUrl: "https://tnresults.nic.in/acpter.htm",
        ),
      ),
    );
  }
}
