import 'package:flutter/material.dart';

class PlanetRow extends StatelessWidget {
  final planetThumbnail = Container(
    margin: EdgeInsets.symmetric(vertical: 16),
    alignment: FractionalOffset.centerLeft,
    child: Image.asset("assets/images/mars.png"),
    height: 92,
    width: 92,
  );

  final planetCard = Container(
    height: 124,
    margin: EdgeInsets.only(left: 46),
    decoration: BoxDecoration(
      color: Color(0xFF333366),
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(8),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black12,
          blurRadius: 10,
          offset: Offset(0.0, 10.0)
        )
      ]
    )
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Stack(
        children: <Widget>[
          planetCard,
          planetThumbnail
      ],),
    );
  }
}