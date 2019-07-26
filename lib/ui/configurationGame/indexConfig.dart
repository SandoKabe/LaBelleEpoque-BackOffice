import 'package:flutter/material.dart';



class ConfigurationGame extends StatelessWidget {
  ConfigurationGame({ this.name });
  final String name;

  @override
  Widget build(BuildContext context) {

    if ( name == "QCM"){

    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Jeu de piste"),
        backgroundColor: Colors.black,
        bottomOpacity: 0.5,
      ),
      body: name == 'QCM'
              ? QCMConfiguration()
              : QCMConfiguration(),
            floatingActionButton: FloatingActionButton.extended(
                  onPressed: () {
                          Navigator.of(context).pop();
                        },
                  label: Text(''),
                  icon: Icon(Icons.save),
                  backgroundColor: Colors.black,
             ),//
             
        //title: 'Flutter Demo Home Page',
        //key: key,
      
    );
  }
}

class QCMConfiguration extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QCMConfigurationState();
  }
}

class _QCMConfigurationState extends State<QCMConfiguration> {

  TextEditingController nameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

   @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        color: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 8.0,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
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
                      labelText: 'Nom de l\'énigme',
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                    controller: locationController,
                    onChanged: (v) => locationController.text = v,
                    decoration: InputDecoration(
                      labelText: "Description",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                    controller: descriptionController,
                    onChanged: (v) => descriptionController.text = v,
                    decoration: InputDecoration(
                      labelText: 'Réponse 1',
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                    controller: descriptionController,
                    onChanged: (v) => descriptionController.text = v,
                    decoration: InputDecoration(
                      labelText: 'Réponse 2',
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                    controller: descriptionController,
                    onChanged: (v) => descriptionController.text = v,
                    decoration: InputDecoration(
                      labelText: 'Réponse 3',
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                    controller: descriptionController,
                    onChanged: (v) => descriptionController.text = v,
                    decoration: InputDecoration(
                      labelText: 'Indice',
                    )),
              ),

            ],
          ),
        ),
      );
  }
}

