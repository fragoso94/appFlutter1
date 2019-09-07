import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantallaDos extends StatelessWidget{

 Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("My App in Flutter"),
      ),

      body: Center(
        child: RaisedButton(
            child: Text("Regresar"),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        
      ),

    );
  }

}