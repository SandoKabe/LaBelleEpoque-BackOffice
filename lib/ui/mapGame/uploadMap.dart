import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';



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

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("In Upload Map");
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Example'),
      ),
      body: Center(
        child: _image == null
            ? Text('No image selected.')
            : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}