import 'package:flutter/material.dart';

class EndPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Jeu de piste"),
        backgroundColor: Colors.black,
        bottomOpacity: 0.5,
      ),
      body:  Center(
        heightFactor: 100,
        child: new Text('  Êtes-vous prêt à   générer le jeu ?',
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        //
      ),
      floatingActionButton: FloatingActionButton.extended(
                  onPressed: () {
                          Navigator.of(context).pushNamed('/screenSaveGame');
                        },
                  label: Text(
                      'Terminer',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                  //icon: Icon(Icons.save),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(),
             ),
    );
  }
}


class SaveGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
print("saveGame");
    return Scaffold(
      body:  Center(
        heightFactor: 100,
        child: new Text('Fin',
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        //
      ),
    );
  }
}