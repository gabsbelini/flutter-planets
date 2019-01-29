import 'package:flutter/material.dart';
import '../models/planet.dart';
import 'text_style.dart';
import 'separator.dart';
import 'planet_summary.dart';

class DetailPage extends StatelessWidget {
  final Planet planet;
  DetailPage(this.planet);

  Container _getGradient() {
    return Container(
      margin: EdgeInsets.only(top: 190.0),
      height: 110.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color(0x00736AB7),
            Color(0xFF736AB7)
          ],
          stops: [0.0, 0.9],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(0.0, 1.0),
        ),
      ),
    );
  }

  Widget _getContent() {
    final _overviewTitle = "Overview".toUpperCase();
      return ListView(
        padding: EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
        children: <Widget>[
          PlanetSummary(planet,
            horizontal: false,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(_overviewTitle, style: Style.headerTextStyle,),
                Separator(),
                Text( planet.description, style: Style.commonTextStyle),
              ],
            ),
          ),
        ],

    );
  }

 Container _getToolbar(BuildContext context) {
    return Container(
            margin: EdgeInsets.only(
                top: MediaQuery
                    .of(context)
                    .padding
                    .top),
            child: BackButton(color: Colors.white),
          );
  }
  Container _getBackground() {
    return Container(
      child: Image.network(planet.picture,
        fit: BoxFit.cover,
        height: 300.0),
      constraints: BoxConstraints.expand(height: 300.0)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Color(0xFF736AB7),
        child: Stack(
          children: <Widget>[
            _getBackground(),
            _getGradient(),
            _getContent(),
            _getToolbar(context)
          ],
        )
      )
    );
  }
}