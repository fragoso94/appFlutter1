import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*sclass PantallaTres extends StatefulWidget{
  _pantallaTres createState() = _pantallaTres();
}*/


class PantallaTres extends StatelessWidget{
  final String datosRecibidos;
  final String mensaje = "Estos datos son de la pantalla Tres";
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  //constructor
  PantallaTres(
    {
      Key key, @required this.datosRecibidos
    }
  );

 Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("My App in Flutter"),
      ),

      body: Form(
        child: Column(children: <Widget>[
          TextFormField(
            validator: (value){
              if(value.isEmpty)
                return "El campo es requerido";
            },
          ),
          RaisedButton(
            child: Text("Enviar", style: TextStyle(color: Colors.white),),
            onPressed: (){
              if(_formKey.currentState.validate()){
                print("Formulario enviado correctamente");
              }
            },
          )
        ],),
        )

    );
  }

}