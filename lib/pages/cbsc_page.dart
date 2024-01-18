import 'package:flutter/material.dart';
import 'package:results/designs/designs.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CbscTen extends StatefulWidget {
  const CbscTen({Key? key}) : super(key: key);

  @override
  State<CbscTen> createState() => _CbscTenState();
}

class _CbscTenState extends State<CbscTen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("10th Result"),
        backgroundColor: Color.fromRGBO(95, 49, 125,2) ,
      ),
      body: Container(
        height: sHeight(100, context),
        width: sWidth(100, context),
        child: WebView(
          initialUrl: "https://resultsarchives.nic.in/cbseresults/cbseresults2021/class10/Class10th21.htm",
        ),
      ),
    );
  }
}

class CbseTwo extends StatefulWidget {
  const CbseTwo({Key? key}) : super(key: key);

  @override
  State<CbseTwo> createState() => _CbseTwoState();
}

class _CbseTwoState extends State<CbseTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("12th Result"),
        backgroundColor: Color.fromRGBO(95, 49, 125,2) ,
      ),
      body: Container(
        height: sHeight(100, context),
        width: sWidth(100, context),
        child: WebView(
          initialUrl: "https://cbseresults.nic.in/class-twelfth/Class12th22Compart.htm",
        ),
      ),
    );
  }
}

