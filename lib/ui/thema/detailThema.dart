import 'package:flutter/material.dart';
import 'dart:async';

void displayThema(BuildContext context) {
  //
  // Initialize a "Broadcast" Stream controller of integers
  //
  final StreamController ctrl = StreamController<int>.broadcast();
  
  //
  // Initialize a single listener which filters out the odd numbers and
  // only prints the even numbers
  //
  final StreamSubscription subscription = ctrl.stream
					      .where((value) => (value % 2 == 0))
					      .listen((value) => print('$value'));

  //
  // We here add the data that will flow inside the stream
  //
  for(int i = 1; i <  11; i++){
  	ctrl.sink.add(i);
    if ( i == 3){
      _showSecondPage(context,  'assets/images/scifi/'); 
    }
  }
}

void _showSecondPage(BuildContext context, path) {
  print("context path: " + path);
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (ctx) => Scaffold(
            body: Center(
              child: Hero(
                  tag: 'my-hero', 
                  child: //Image.asset(img)),
                  PageView(
                    children: <Widget>[
                      Container(
                        color: Colors.white30,
                        child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Image.asset(path+'image1.jpg'),
                        )
                      ),
                      Container(
                        color: Colors.cyan,
                        child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Image.asset(path+'image2.jpg'),
                        ),
                      ),
                      Container(
                        color: Colors.redAccent,
                        child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Image.asset(path+'image3.jpg'),
                        ),
                      ),
                    ],
                  )
            ),
          ),
    ),
  ),
  );
}