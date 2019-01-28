import 'package:flutter/material.dart';
import 'components/custom_app_bar.dart';

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

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlanetRow(planets[2]);
  }
}

class PlanetRow extends StatelessWidget {
  final baseTextStyle = const TextStyle(
      fontFamily: 'Poppins'
    );

  

  final Planet planet;

  PlanetRow(this.planet);

 

  

  @override
  Widget build(BuildContext context) {
    
    final headerTextStyle = baseTextStyle.copyWith(
      color: Colors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.w600
    );

    final regularTextStyle = baseTextStyle.copyWith(
      color: const Color(0xffb6b2df),
      fontSize: 9.0,
      fontWeight: FontWeight.w400
    );
    final subHeaderTextStyle = regularTextStyle.copyWith(
      fontSize: 12.0
    );
     Widget _planetValue({String value, String image}) {
      return new Row(
        children: <Widget>[
          new Image.asset(image, height: 12.0),
          new Container(width: 8.0),
          new Text(planet.gravity, style: regularTextStyle),
        ]
      );
      }

    final planetCardContent = Container(
    margin: EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(height: 4.0),
          Text(planet.name,
            style: headerTextStyle,
          ),
          Container(height: 10.0),
          Text(planet.location,
            style: subHeaderTextStyle
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            height: 2.0,
            width: 18.0,
            color: Color(0xff00c6ff)
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: _planetValue(value: planet.distance, image: 'assets/images/ic_distance.png')
              ),
              Expanded(
                child: _planetValue(value: planet.distance, image: 'assets/images/ic_gravity.png')
              ),
            ]
          ),
        ],
      ),
    );

    final planetCard = Container(
    child: planetCardContent,
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
    final planetThumbnail = Container(
    margin: EdgeInsets.symmetric(vertical: 16),
    alignment: FractionalOffset.centerLeft,
    child: new Image(
      image: new AssetImage(planet.image),
      height: 92.0,
      width: 92.0,
    ),
  );
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

List<Planet> planets = [
  const Planet(
    id: "1",
    name: "Mars",
    location: "Milkyway Galaxy",
    distance: "227.9m Km",
    gravity: "3.711 m/s ",
    description: "Lorem ipsum...",
    image: "assets/images/mars.png",
  ),
  const Planet(
    id: "2",
    name: "Neptune",
    location: "Milkyway Galaxy",
    distance: "54.6m Km",
    gravity: "11.15 m/s ",
    description: "Lorem ipsum...",
    image: "assets/images/neptune.png",
  ),
  const Planet(
    id: "3",
    name: "Moon",
    location: "Milkyway Galaxy",
    distance: "54.6m Km",
    gravity: "1.622 m/s ",
    description: "Lorem ipsum...",
    image: "assets/images/moon.png",
  ),
  const Planet(
    id: "4",
    name: "Earth",
    location: "Milkyway Galaxy",
    distance: "54.6m Km",
    gravity: "9.807 m/s ",
    description: "Lorem ipsum...",
    image: "assets/images/earth.png",
  ),
  const Planet(
    id: "5",
    name: "Mercury",
    location: "Milkyway Galaxy",
    distance: "54.6m Km",
    gravity: "3.7 m/s ",
    description: "Lorem ipsum...",
    image: "assets/images/mercury.png",
  ),
];