import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          CustomAppBar(),
          HomePageBody(),
          HomePageBody(),
          HomePageBody(),
        ],
      ),
      );
  }
}

class CustomAppBar extends StatelessWidget {
  final double barHeight = 66.0;
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
        height: statusBarHeight + barHeight,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF3366FF), Color(0xFF00CCFF)],
                begin: FractionalOffset(0, 0),
                end: FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp)),
        child: Center(
            child: Text('treva',
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 36.0))));
  }
}

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlanetRow();
  }
}

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

class Planet {
  final String id;
  final String name;
  final String location;
  final String distance;
  final String gravity;
  final String description;
  final String image;

  const Planet({this.id, this.name, this.location, this.distance, this.gravity, this.description, this.image});
}