import 'package:flutter/material.dart';

hexStringToColor(String hexColor)
{
  hexColor = hexColor.toUpperCase().replaceAll("#","");
  if(hexColor.length==6)
  {
    hexColor = "FF$hexColor";
  }
  return Color(int.parse(hexColor,radix: 16));
}


double sHeight(double per, BuildContext context){
  double h = MediaQuery.of(context).size.height;
  return h * per / 100;
}

double sWidth(double per, BuildContext context){
  double w = MediaQuery.of(context).size.width;
  return w * per / 100;
}

BoxDecoration PrimaryRoundBox() => BoxDecoration(
  borderRadius: BorderRadius.circular(20.0),
  boxShadow: [
    BoxShadow(
      color: Colors.white,
      blurRadius: 10,
      offset: Offset(0, 0),
    ),
    BoxShadow(
        color: Colors.white,
        blurRadius: 10,
        offset: Offset(0, 0)),],
  color: Color.fromRGBO(95, 49, 125,2),
);

BoxDecoration PrimaryRoundBox1() => BoxDecoration(
  borderRadius: BorderRadius.circular(20.0),
  boxShadow: [
    BoxShadow(
      color: Colors.white,
      blurRadius: 10,
      offset: Offset(0, 0),
    ),
    BoxShadow(
        color: Colors.white,
        blurRadius: 10,
        offset: Offset(0, 0)),],
  color: Color.fromRGBO(46, 92, 75,2),
);

TextStyle MainStyleFont() => const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w700,
  color: Colors.white,
);

TextStyle MainStyleFont2() => const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w700,
  color: Colors.black,
);


