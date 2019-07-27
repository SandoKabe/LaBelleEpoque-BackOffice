import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

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
                      labelText: 'Nom de l\'énigme',
                    )),
              ),
              Expanded(
                //padding: const EdgeInsets.only(bottom: 1.0),
                child: TextField(
                    controller: locationController,
                    onChanged: (v) => locationController.text = v,
                    decoration: InputDecoration(
                      labelText: "Description",
                    )),
              ),
              Expanded(
                //padding: const EdgeInsets.only(bottom: 1.0),
                child: TextField(
                    controller: descriptionController,
                    onChanged: (v) => descriptionController.text = v,
                    decoration: InputDecoration(
                      labelText: 'Réponse 1',
                    )),
              ),
              Expanded(
                //padding: const EdgeInsets.only(bottom: 1.0),
                child: TextField(
                    controller: descriptionController,
                    onChanged: (v) => descriptionController.text = v,
                    decoration: InputDecoration(
                      labelText: 'Réponse 2',
                    )),
              ),
              Expanded(
                //padding: const EdgeInsets.only(bottom: 1.0),
                child: TextField(
                    controller: descriptionController,
                    onChanged: (v) => descriptionController.text = v,
                    decoration: InputDecoration(
                      labelText: 'Réponse 3',
                    )),
              ),
              Expanded(
                //padding: const EdgeInsets.only(bottom: 1.0),
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


class PUZZLEConfiguration extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PUZZLEConfigurationState();
  }
}

class _PUZZLEConfigurationState extends State<PUZZLEConfiguration> {

   File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    
    setState(() {
      _image = image;
    });
  }
  
  Image addGridGeoloc(_image) {
    return Image.file(_image);
  }

  @override
  void initState() {
    super.initState();
  }

   @override
  Widget build(BuildContext context) {
  TextEditingController nameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

    return //InputMap(virtualMap: emptyMap,);

        Scaffold(
     body: Stack(children: <Widget>[
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
                      labelText: 'Nom de l\'énigme',
                    )),
              ),
              Expanded(
                //padding: const EdgeInsets.only(bottom: 1.0),
                child: TextField(
                    controller: locationController,
                    onChanged: (v) => locationController.text = v,
                    decoration: InputDecoration(
                      labelText: "Description",
                    )),
              ),
            ],
          ),
        ),
      ),
        Center(
          child: _image == null
              ? Text('')
              : addGridGeoloc(_image),
          
        ),
        _image == null
        ? 
        Container(
          margin: EdgeInsets.only(top:300.0, left:70.0),
          child: FlatButton(
        
        onPressed: getImage,
        child: Text('Ajouter l\'image',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal, color: Colors.grey),),
        //child: Icon(Icons.add_a_photo),
        color: Colors.black,
      ))
      : Container(),
        
      ]),

      
    );
  }
}


class INTROConfiguration extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _INTROConfigurationState();
  }
}

class _INTROConfigurationState extends State<INTROConfiguration> {

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
                      labelText: 'Nom de l\'énigme',
                    )),
              ),
              Expanded(
                //padding: const EdgeInsets.only(bottom: 1.0),
                child: TextField(
                    controller: locationController,
                    onChanged: (v) => locationController.text = v,
                    decoration: InputDecoration(
                      labelText: "Description",
                    )),
              ),
            ],
          ),
        ),
      );
  }
}


class DRAGONConfiguration extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DRAGONConfigurationState();
  }
}

class _DRAGONConfigurationState extends State<DRAGONConfiguration> {

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
              DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/dragon.png'),
                  alignment: Alignment.center,
                )
              ),
              ),
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
                      labelText: 'Nom de l\'énigme',
                    )),
              ),
              Expanded(
                //padding: const EdgeInsets.only(bottom: 1.0),
                child: TextField(
                    controller: locationController,
                    onChanged: (v) => locationController.text = v,
                    decoration: InputDecoration(
                      labelText: "Description",
                    )),
              ),      
            ],
          ),
        ),
      );
  }
}
