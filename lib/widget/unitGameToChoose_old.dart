import 'package:flutter/material.dart';


class UnitGameToChoose extends StatelessWidget {
  UnitGameToChoose({
    Key key, 
    @required this.name})
    : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
print('Name : $name');
    return Scaffold(
 
      body: new Game(
        name: name,
        //title: 'Flutter Demo Home Page',
        //key: key,
      ),
    );
  }
}


class Game extends StatefulWidget {
   Game({
    Key key,
    @required this.name,
  }) : super(key: key);

  final String name;

  @override
  State<StatefulWidget> createState() {
    return _GameState(name: name);
  }
}

class _GameState extends State<Game> {
 _GameState({ this.name });
  final String name;

  double width = 100.0, height = 100.0;
  Offset position ;
  Offset initialPosition;
  String colorButton;

  @override
  void initState() {
    print(" initState: $name");
    super.initState();
    position = Offset(0.0, height - 20);
    initialPosition = position;
  }


  @override
  Widget build(BuildContext context) {
    print ("name dans le build : $name");
    if ( name == "QCM" ){
        initialPosition = Offset(
                          MediaQuery.of(context).size.width * 0.7
                          , MediaQuery.of(context).size.height * 0.1
                          );
    }
    if ( name == "PUZZLE" ){
        initialPosition = Offset(
                          MediaQuery.of(context).size.width * 0.7
                          , MediaQuery.of(context).size.height * 0.2
                          );
    }
    if ( name == "DRAGON" ){
        initialPosition = Offset(
                          MediaQuery.of(context).size.width * 0.7
                          , MediaQuery.of(context).size.height * 0.3
                          );
    }
    
    
    return Stack(

      children: <Widget>[
        Positioned(
          
          left: initialPosition.dx,
          top: initialPosition.dy, // - height + 20,
          child: Draggable(
            child: Container(
              width: width,
              height: height,
              color: Color.fromRGBO(49, 380, 58, 0.5),
              /*color: name == "QCM" 
              ? Colors.blue
              : name == "PUZZLE"
                  ? Colors.yellow
                  : Colors.green 
                  */
              child: Center(child: Text(name, style: Theme.of(context).textTheme.headline,),),
            ),
            feedback: Container(
              child: Center(
                child: Text(name, style: Theme.of(context).textTheme.headline,),),
              color: Colors.red[300],
              width: width,
              height: height,
            ),
            onDraggableCanceled: (Velocity velocity, Offset offset){
              if (offset > Offset( MediaQuery.of(context).size.width * 0.5, MediaQuery.of(context).size.height * 0)) {               
                setState(() =>  position = offset );
              } else {
                setState(() => {
                  position = Offset(MediaQuery.of(context).size.width * 0.5, MediaQuery.of(context).size.height * 0.65), //offset
                  Navigator.of(context).pushNamed('/screenConfigGame', arguments: <String, String>{
      'name': name   },),
                  position = initialPosition
              });
              print('déplacé');
               //setState(() => position = offset);
              print ('position2 = $position');
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