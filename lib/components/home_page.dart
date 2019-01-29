import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'package:planets/models/planet.dart';
import 'planet_summary.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          CustomAppBar(),
          HomePageBody(),
        ],
      ),
    );
  }
}

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color(0xFF736AB7),
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: <Widget>[
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              sliver: SliverFixedExtentList(
                itemExtent: 154.0,
                delegate: SliverChildBuilderDelegate(
                  (context, index) => PlanetSummary(planets[index]),
                  childCount: planets.length,
                )
              )
            )
          ],
        )
      ),
    );
  }
}