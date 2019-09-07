import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantallaDos extends StatelessWidget{
  final String datosRecibidos;
  final String mensaje = "Estos datos son de la pantalla Dos";

  //constructor
  PantallaDos(
    {
      Key key, @required this.datosRecibidos
    }
  );

 Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("My App in Flutter"),
      ),

      body: Center(
        child: Column(
          children: <Widget>[ 
           RaisedButton(
             child: Text("Regresar"),
             onPressed: (){
                Navigator.pop(context, mensaje);
             },
           ),
           Text("Data:" + datosRecibidos),
          ],
        )
      ),

    );
  }

}