import 'package:flutter/material.dart';


class SetGameLocation extends StatelessWidget {
  SetGameLocation({Key key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Jeu de piste"),
        backgroundColor: Colors.black,
        bottomOpacity: 0.5,
      ),
      body: GameLocation(),
            floatingActionButton: FloatingActionButton.extended(
                  onPressed: () {
                          Navigator.of(context).pop();
                        },
                  label: Text(''),
                  icon: Icon(Icons.save),
                  backgroundColor: Colors.black,
             ),//
    );
  }
}



class GameLocation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GameLocationState();
  }
}

class _GameLocationState extends State<GameLocation> {

  TextEditingController nameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

   @override
  Widget build(BuildContext context) {
    return 
    Container(
        height: 400,
        color: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 1.0,
            horizontal: 1.0,
          ),
          child: Column(
            children: [
              Expanded(
                //padding: const EdgeInsets.only(bottom: 1.0),
                child: TextField(
                    // Tell your textfield which controller it owns
                    controller: nameController,
                    // Every single time the text changes in a
                    // TextField, this onChanged callback is called
                    // and it passes in the value.
                    //
                    // Set the text of your controller to
                    // to the next value.
                    onChanged: (v) => nameController.text = v,
                    decoration: InputDecoration(
                      labelText: 'Quelle étape voulez vous ajouter ? 1, 2 ou 3',
                    )),
              )

            ],
          ),
        ),
      );
  }
}
