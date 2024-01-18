import 'package:flutter/material.dart';
import 'package:results/designs/designs.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EngiResult extends StatefulWidget {
  const EngiResult({Key? key}) : super(key: key);

  @override
  State<EngiResult> createState() => _EngiResultState();
}

class _EngiResultState extends State<EngiResult> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anna university"),
        backgroundColor: Color.fromRGBO(95, 49, 125,2) ,
      ),
      body: Container(
        height: sHeight(100, context),
        width: sWidth(100, context),
        child: WebView(
          initialUrl: "https://aucoe.annauniv.edu/result_mark/index.php",
        ),
      ),
    );
  }
}