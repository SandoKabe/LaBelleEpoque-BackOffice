import 'package:flutter/material.dart';
import './detailThema.dart';
import '../chooseGame/indexGame.dart';

/*
 * Display Thema page 
 * Seconf Step send to details thema
 * Choose the thema and send to Perso choice page via Named Route
 * Save Thema in GameForm object
 * Widget statique
 */
class DisplayAllThema extends StatefulWidget {
  DisplayAllThema({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DisplayAllThemaState createState() => _DisplayAllThemaState();
}

class _DisplayAllThemaState extends State<DisplayAllThema> {

  bool _nextStepChooseGame = false;

  void nextStepChooseGame() {
    setState(() {
      _nextStepChooseGame = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(this._nextStepChooseGame) {
      return ChooseGame();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Jeu de piste"),
        backgroundColor: Colors.black,
        bottomOpacity: 0.5,
      ),
      body: new ListView(
          padding: const EdgeInsets.all(8.0),
          children: <Widget>[
            Container(
              height: 50,
              child: const Center(
                  child: Text(
                'Choisir son univers',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              )),
            ),
            Container(
              //height: 50,
              //color: Colors.white,
              //Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => displayThema(context), //_showSecondPage(context, 'assets/images/scifi/image1.jpg'),
                child: new Image.asset(
                  'assets/images/scifi.jpg',
                ),
              ),
            ),
            Container(
              child: new FlatButton(
                child: Text('Celui-ci',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),),
                //onPressed: () => chooseGame(context),
                onPressed: () => nextStepChooseGame(),
              )
            ),
            Container(
              //height: 50,
              color: Colors.white,
              padding: const EdgeInsets.all(8.0),
              //child: const Center(child: Text('Entry B')),
              child: new Image.asset(
                'assets/images/indi.jpg',
              ),
            ),
            Container(
              child: new FlatButton(
                child: Text('Celui-là',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),),
                onPressed: null,
              )
            ),
            Container(
              //height: 50,
              color: Colors.white,
              padding: const EdgeInsets.all(8.0),
              //child: const Center(child: Text('Entry C')),
              child: new Image.asset(
                'assets/images/pop.jpg',
              ),
            ),
            Container(
              child: new FlatButton(
                child: Text('Top! Je prends',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),),
                onPressed: null,
              )
            ),
            Container(
              //height: 50,
              color: Colors.white,
              padding: const EdgeInsets.all(8.0),
              //child: const Center(child: Text('Entry C')),
              child: new Image.asset(
                'assets/images/myage.jpg',
              ),
            ),
            Container(
              child: new FlatButton(
                child: Text('Celui-ci',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),),
                onPressed: null,
              )
            ),
          ],
        ));
  }
}
