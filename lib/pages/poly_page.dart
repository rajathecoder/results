import 'package:flutter/material.dart';
import 'package:results/designs/designs.dart';

class Polyresult extends StatefulWidget {
  const Polyresult({Key? key}) : super(key: key);

  @override
  State<Polyresult> createState() => _PolyresultState();
}


class _PolyresultState extends State<Polyresult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Polytechnic College"),
        backgroundColor: Color.fromRGBO(95, 49, 125,2) ,
      ),
      body: Container(
        height: sHeight(100, context),
        width: sWidth(100, context),
        child: Column(

        )
      ),
    );
  }
}
