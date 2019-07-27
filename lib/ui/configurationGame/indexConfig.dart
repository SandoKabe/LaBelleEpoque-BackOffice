import 'package:flutter/material.dart';
import '../../widget/gameConfigWidget.dart';



class ConfigurationGame extends StatelessWidget {
  ConfigurationGame({ 
  Key key,
  @required this.name})
  : super(key: key);

  static const routeName = '/screenConfigGame';
  
  
  final String name;

  @override
  Widget build(BuildContext context) {
final ScreenArguments args = ModalRoute.of(context).settings.arguments;
print("name : ${args.name}");

    return Scaffold(
      appBar: AppBar(
        title: Text("Jeu de piste"),
        backgroundColor: Colors.black,
        bottomOpacity: 0.5,
      ),
      body: args.name == 'QCM'
              ? QCMConfiguration()
              : args.name == 'PUZZLE'
                  ? PUZZLEConfiguration()
                  : name == "INTRO"
                  ? INTROConfiguration()
                  : DRAGONConfiguration(),

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

class ScreenArguments {
  final String name;

  ScreenArguments(this.name);
}