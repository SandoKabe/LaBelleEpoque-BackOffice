import 'package:flutter/material.dart';
import '../../widget/unitGameToChoose.dart';
import '../mapGame/uploadMap.dart';


class ChooseGame extends StatelessWidget {
  ChooseGame({Key key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: 
          Stack(
              children: <Widget>[ 
                              
                  new UnitGameToChoose(name: "QCM"), //HomePage()//
                  new UnitGameToChoose(name: "PUZZLE"), //HomePage()//
                  new UnitGameToChoose(name: "DRAGON"), //HomePage()//
                  Container(
                    width: 200, //MediaQuery.of(context).size.width * 0.8,
                    height: 200, //MediaQuery.of(context).size.height * 0.8,
                    alignment: Alignment.center,
                    //padding: EdgeInsets.only(top: 50.0),
                    margin: EdgeInsets.only(top: 250.0, left: 50),
                    decoration: new BoxDecoration(
                    border: new Border.all(
                        color: Colors.black38,
                        width: 0.5,
                        style: BorderStyle.solid
                      ),
                    ),
                    
                    child: Text(
                      'Placer son jeu ici !',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.black38),
                      ),
                  ),
                  
             
                 ],
          ),
          floatingActionButton: FloatingActionButton.extended(
                  onPressed: () {
                          UploadMap();
                        },
                  label: Text(
                      'Terminer',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                  //icon: Icon(Icons.save),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(),
             ),//
    );
        //title: 'Flutter Demo Home Page',
        //key: key,
  
  }
}

