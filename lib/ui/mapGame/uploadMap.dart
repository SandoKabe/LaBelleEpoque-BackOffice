import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../../logic/virtual_map.dart';
import '../../widget/input_map.dart';

/*
 * Display Thema page 
 * Seconf Step send to details thema
 * Choose the thema and send to Perso choice page via Named Route
 * Save Thema in GameForm object
 * Widget statique
 */
class UploadMap extends StatefulWidget {
  UploadMap({Key key}) : super(key: key);

  @override
  _UploadMapState createState() => _UploadMapState();
}

class _UploadMapState extends State<UploadMap> {
  File _image;

  bool _isMapVisible;
  bool _isGameSetted;
  VirtualMap emptyMap;
  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    
    setState(() {
      _image = image;
    });
  }

   @override
  void initState() {
    super.initState();
    _isMapVisible = false;
    _isGameSetted = false;
    emptyMap = new VirtualMap(10, 10);
  }


 

  Image addGridGeoloc(_image) {
    // Add rendre visible la grille + variable + dans le build
    _isMapVisible = true;
    return Image.file(_image);
  }


  @override
  Widget build(BuildContext context) {
    print("_isGameSetted: $_isGameSetted");
    print("_isMapVisible: $_isMapVisible");
    

    return //InputMap(virtualMap: emptyMap,);

        Scaffold(
      appBar: AppBar(
        title: Text("Jeu de piste"),
        backgroundColor: Colors.black,
        bottomOpacity: 0.5,
      ),
      body: Stack(children: <Widget>[
        Center(
          child: _image == null
              ? Text('No image selected.')
              : addGridGeoloc(_image),
        ),
        _isMapVisible == true
        ? InputMap(
          virtualMap: emptyMap,
        )
        : new Text(''),
        
      ]),

      floatingActionButton: _isMapVisible == false
      ?
      FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
        backgroundColor: Colors.black,
      )
      : FloatingActionButton(
            onPressed: () => Navigator.of(context).pushNamed('/screenEnd'),
            tooltip: 'Pick Image',
            child: Icon(Icons.save_alt),
            backgroundColor: Colors.black,
          ),
    );
  }
}
