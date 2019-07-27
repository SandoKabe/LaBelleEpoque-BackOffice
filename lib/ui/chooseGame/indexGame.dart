import 'package:flutter/material.dart';
import '../../widget/unitGameToChoose.dart'; //


class ChooseGame extends StatelessWidget {
  ChooseGame({Key key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Jeu de piste"),
        backgroundColor: Colors.black,
        bottomOpacity: 0.5,
      ),
      body: 
          Stack(
              children: <Widget>[               
                  UnitGameToChoose(),  
                  Container(
                    width: 200, //MediaQuery.of(context).size.width * 0.8,
                    height: 200, //MediaQuery.of(context).size.height * 0.8,
                    alignment: Alignment.center,
                    //padding: EdgeInsets.only(top: 50.0),
                    margin: EdgeInsets.only(top: 150.0, left: 50),
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
                          Navigator.of(context).pushNamed('/screenUploadMap');
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


