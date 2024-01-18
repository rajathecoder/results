import 'package:flutter/material.dart';
import 'package:results/designs/designs.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class bharatharts extends StatefulWidget {
  const bharatharts({Key? key}) : super(key: key);

  @override
  State<bharatharts> createState() => _bharathartsState();
}

class _bharathartsState extends State<bharatharts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bharathiyar University"),
        backgroundColor: Color.fromRGBO(95, 49, 125,2) ,
      ),
      body: Container(
        height: sHeight(100, context),
        width: sWidth(100, context),
        child: WebView(
          initialUrl: "https://b-u.ac.in/node/1179",
        ),
      ),

    );
  }
}


class Bharthi extends StatefulWidget {
  const Bharthi({Key? key}) : super(key: key);

  @override
  State<Bharthi> createState() => _BharthiState();
}

class _BharthiState extends State<Bharthi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bharathidasan University"),
        backgroundColor: Color.fromRGBO(95, 49, 125,2) ,
      ),
      body: Container(
        height: sHeight(100, context),
        width: sWidth(100, context),
        child: WebView(
          initialUrl: "https://www.bdu.ac.in/examinations/results/",
        ),
      ),
    );
  }
}


class LoyolaArts extends StatefulWidget {
  const LoyolaArts({Key? key}) : super(key: key);

  @override
  State<LoyolaArts> createState() => _LoyolaArtsState();
}

class _LoyolaArtsState extends State<LoyolaArts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loyola College"),
        backgroundColor: Color.fromRGBO(95, 49, 125,2) ,
      ),
      body: Container(
        height: sHeight(100, context),
        width: sWidth(100, context),
        child: WebView(
          initialUrl: "https://erp.loyolacollege.edu/loyolaonline/online/report/onlineResultNew.jsp",
        ),
      ),
    );
  }
}


class Madrasuni extends StatefulWidget {
  const Madrasuni({Key? key}) : super(key: key);

  @override
  State<Madrasuni> createState() => _MadrasuniState();
}

class _MadrasuniState extends State<Madrasuni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Madras University"),
        backgroundColor: Color.fromRGBO(95, 49, 125,2) ,
      ),
      body: Container(
        height: sHeight(100, context),
        width: sWidth(100, context),
        child: WebView(
          initialUrl: "https://result.unom.ac.in/results/",
        ),
      ),
    );
  }
}



class Ethiraj extends StatefulWidget {
  const Ethiraj({Key? key}) : super(key: key);

  @override
  State<Ethiraj> createState() => _EthirajState();
}



class _EthirajState extends State<Ethiraj> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ethiraj College For Women"),
        backgroundColor: Color.fromRGBO(95, 49, 125,2) ,
      ),
      body: Container(
        height: sHeight(100, context),
        width: sWidth(100, context),
        child: WebView(
          initialUrl: "http://results.worldcolleges.info/ethirajresults/apr2022/index.php",
        ),
      ),
    );
  }
}

class PsgArts extends StatefulWidget {
  const PsgArts({Key? key}) : super(key: key);

  @override
  State<PsgArts> createState() => _PsgArtsState();
}

class _PsgArtsState extends State<PsgArts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PSG Arts and Science College"),
        backgroundColor: Color.fromRGBO(95, 49, 125,2) ,
      ),
      body: Container(
        height: sHeight(100, context),
        width: sWidth(100, context),
        child: WebView(
          initialUrl: "https://laudea.psgcas.ac.in/exams/result.html#!/get_result",
        ),
      ),
    );
  }
}

class GobiArts extends StatefulWidget {
  const GobiArts({Key? key}) : super(key: key);

  @override
  State<GobiArts> createState() => _GobiArtsState();
}

class _GobiArtsState extends State<GobiArts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gobi Arts and Science College"),
        backgroundColor: Color.fromRGBO(95, 49, 125,2) ,
      ),
      body: Container(
        height: sHeight(100, context),
        width: sWidth(100, context),
        child: WebView(
          initialUrl: "http://www.gascgobi.ac.in/results.asp",
        ),
      ),
    );
  }
}


class Sastra extends StatefulWidget {
  const Sastra({Key? key}) : super(key: key);

  @override
  State<Sastra> createState() => _SastraState();
}

class _SastraState extends State<Sastra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sastra University"),
        backgroundColor: Color.fromRGBO(95, 49, 125,2) ,
      ),
      body: Container(
        height: sHeight(100, context),
        width: sWidth(100, context),
        child: WebView(
          initialUrl: "https://webstream.sastra.edu/sastrapwi/",
        ),
      ),


    );
  }
}




