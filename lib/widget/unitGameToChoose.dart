import 'package:flutter/material.dart';
import 'package:margot/ui/configurationGame/indexConfig.dart';

class UnitGameToChoose extends StatelessWidget {
  UnitGameToChoose({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Game(
          //title: 'Flutter Demo Home Page',
          //key: key,
          ),
    );
  }
}

class Game extends StatefulWidget {
  Game({
    Key key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _GameState();
  }
}

class _GameState extends State<Game> {
  double width = 100.0, height = 100.0;
  Offset position;
  Offset initialPosition;

  @override
  void initState() {
    super.initState();
    position = Offset(0.0, height - 20);
    initialPosition = position;
  }

/*
Offset(
                          MediaQuery.of(context).size.width * 0.7
                          , MediaQuery.of(context).size.height * 0.1
                          );
                          */
  List<Thumbnail> thumbnail = [
    new Thumbnail(
        name: "INTRO",
        widthThumbnail: 75.0,
        heightThumbnail: 75.0,
        colorThumbnail: Colors.green,
        colorThumbnailOnDrag: Colors.pink,
        positionX: 30.0,
        positionY: 20.0),
    new Thumbnail(
        name: "QCM",
        widthThumbnail: 75.0,
        heightThumbnail: 75.0,
        colorThumbnail: Colors.yellow,
        colorThumbnailOnDrag: Colors.pink,
        positionX: 0.0,
        positionY: 0.0),
    new Thumbnail(
        name: "PUZZLE",
        widthThumbnail: 75.0,
        heightThumbnail: 75.0,
        colorThumbnail: Colors.blue,
        colorThumbnailOnDrag: Colors.pink,
        positionX: 0.0,
        positionY: 0.0),
    new Thumbnail(
        name: "DRAGON",
        widthThumbnail: 75.0,
        heightThumbnail: 75.0,
        colorThumbnail: Colors.orange,
        colorThumbnailOnDrag: Colors.pink,
        positionX: 0.0,
        positionY: 0.0),
  ];



  @override
  Widget build(BuildContext context) {
thumbnail[0].positionY = MediaQuery.of(context).size.height * 0.1;
thumbnail[1].positionY = MediaQuery.of(context).size.height * 0.25;
thumbnail[2].positionY = MediaQuery.of(context).size.height * 0.40;
thumbnail[3].positionY = MediaQuery.of(context).size.height * 0.55;
thumbnail[0].positionX = MediaQuery.of(context).size.width * 0.75;
thumbnail[1].positionX = MediaQuery.of(context).size.width * 0.75;
thumbnail[2].positionX = MediaQuery.of(context).size.width * 0.75;
thumbnail[3].positionX = MediaQuery.of(context).size.width * 0.75;

    return Stack(
      children: <Widget>[
        Positioned(
          left: thumbnail[0].positionX,
          top: thumbnail[0].positionY, // - height + 20,
          child: Draggable(
            child: Container(
              width: thumbnail[0].widthThumbnail,
              height: thumbnail[0].heightThumbnail,
              color: thumbnail[0].colorThumbnail,
              child: Center(
                child: Text(
                  thumbnail[0].name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            feedback: Container(
              child: Center(
                child: Text(
                  thumbnail[0].name,
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
                ),
              ),
              color: thumbnail[0].colorThumbnailOnDrag,
              width: thumbnail[0].widthThumbnail,
              height: thumbnail[0].heightThumbnail,
            ),
            onDraggableCanceled: (Velocity velocity, Offset offset) {
              //print("thumbnail[0].name : $thumbnail[0].name");
              if (offset >
                  Offset(MediaQuery.of(context).size.width * 0.5,
                      MediaQuery.of(context).size.height * 0)) {
                setState(() => position = offset);
              } else {
                setState(() => {
                      position = Offset(MediaQuery.of(context).size.width * 0.5,
                          MediaQuery.of(context).size.height * 0.65), //offset
                      Navigator.of(context).pushNamed(
                        '/screenConfigGame',
                        arguments: ScreenArguments("INTRO"),//<String, String>{'name': "INTRO"},
                      ),
                      position = initialPosition
                    });
                print('déplacé');
                //setState(() => position = offset);
                print('position2 = $position');
                double tar = MediaQuery.of(context).size.width * 0.5;
                print('$tar');
              }
            },
          ),
        ),
         Positioned(
          left: thumbnail[1].positionX,
          top: thumbnail[1].positionY, // - height + 20,
          child: Draggable(
            child: Container(
              width: thumbnail[1].widthThumbnail,
              height: thumbnail[1].heightThumbnail,
              color: thumbnail[1].colorThumbnail,
              child: Center(
                child: Text(
                  thumbnail[1].name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            feedback: Container(
              child: Center(
                child: Text(
                  thumbnail[1].name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ),
              color: thumbnail[1].colorThumbnailOnDrag,
              width: thumbnail[1].widthThumbnail,
              height: thumbnail[1].heightThumbnail,
            ),
            onDraggableCanceled: (Velocity velocity, Offset offset) {
              if (offset >
                  Offset(MediaQuery.of(context).size.width * 0.5,
                      MediaQuery.of(context).size.height * 0)) {
                setState(() => position = offset);
              } else {
                setState(() => {
                      position = Offset(MediaQuery.of(context).size.width * 0.5,
                          MediaQuery.of(context).size.height * 0.65), //offset
                      Navigator.of(context).pushNamed(
                        '/screenConfigGame',
                        arguments: ScreenArguments("QCM"), //arguments: <String, String>{'name': "QCM"},
                      ),
                      position = initialPosition
                    });
                print('déplacé');
                //setState(() => position = offset);
                print('position2 = $position');
                double tar = MediaQuery.of(context).size.width * 0.5;
                print('$tar');
              }
            },
          ),
        ),
         Positioned(
          left: thumbnail[2].positionX,
          top: thumbnail[2].positionY, // - height + 20,
          child: Draggable(
            child: Container(
              width: thumbnail[2].widthThumbnail,
              height: thumbnail[2].heightThumbnail,
              color: thumbnail[2].colorThumbnail,
              child: Center(
                child: Text(
                  thumbnail[2].name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            feedback: Container(
              child: Center(
                child: Text(
                  thumbnail[2].name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ),
              color: thumbnail[2].colorThumbnailOnDrag,
              width: thumbnail[2].widthThumbnail,
              height: thumbnail[2].heightThumbnail,
            ),
            onDraggableCanceled: (Velocity velocity, Offset offset) {
              if (offset >
                  Offset(MediaQuery.of(context).size.width * 0.5,
                      MediaQuery.of(context).size.height * 0)) {
                setState(() => position = offset);
              } else {
                setState(() => {
                      position = Offset(MediaQuery.of(context).size.width * 0.5,
                          MediaQuery.of(context).size.height * 0.65), //offset
                      Navigator.of(context).pushNamed(
                        '/screenConfigGame',
                        arguments: new ScreenArguments("PUZZLE"), //arguments: <String, String>{'name': "PUZZLE"},
                      ),
                      position = initialPosition
                    });
                print('déplacé');
                //setState(() => position = offset);
                print('position2 = $position');
                double tar = MediaQuery.of(context).size.width * 0.5;
                print('$tar');
              }
            },
          ),
        ),
        Positioned(
          left: thumbnail[3].positionX,
          top: thumbnail[3].positionY, // - height + 20,
          child: Draggable(
            child: Container(
              width: thumbnail[3].widthThumbnail,
              height: thumbnail[3].heightThumbnail,
              color: thumbnail[3].colorThumbnail,
              child: Center(
                child: Text(
                  thumbnail[3].name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            feedback: Container(
              child: Center(
                child: Text(
                  thumbnail[3].name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ),
              color: thumbnail[3].colorThumbnailOnDrag,
              width: thumbnail[3].widthThumbnail,
              height: thumbnail[3].heightThumbnail,
            ),
            onDraggableCanceled: (Velocity velocity, Offset offset) {
              if (offset >
                  Offset(MediaQuery.of(context).size.width * 0.5,
                      MediaQuery.of(context).size.height * 0)) {
                setState(() => position = offset);
              } else {
                setState(() => {
                      position = Offset(MediaQuery.of(context).size.width * 0.5,
                          MediaQuery.of(context).size.height * 0.65), //offset
                      Navigator.of(context).pushNamed(
                        '/screenConfigGame',
                        arguments: new ScreenArguments("DRAGON"),//<String, String>{'name': "DRAGON"},
                      ),
                      position = initialPosition
                    });
                print('déplacé');
                //setState(() => position = offset);
                print('position2 = $position');
                double tar = MediaQuery.of(context).size.width * 0.5;
                print('$tar');
              }
            },
          ),
        ),
        
      ],
    );
  }
}

class Thumbnail {
  String name;
  double widthThumbnail;
  double heightThumbnail;
  Color colorThumbnail;
  Color colorThumbnailOnDrag;
  double positionX;
  double positionY;

  Thumbnail({
    this.name = "",
    this.widthThumbnail = 75.0,
    this.heightThumbnail = 75.0,
    this.colorThumbnail = Colors.black,
    this.colorThumbnailOnDrag = Colors.grey,
    this.positionX = 0.0,
    this.positionY = 0.0,
  });
}


