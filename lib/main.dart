import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_flutter1/pantallaDos.dart';
import 'package:app_flutter1/pantallaTres.dart';

const List<String> colors = ["ffef5777","ff4bcffa","ffffffff", "ff4bcffa","ff0be881","ffef5777","ff4bcffa", "ff0be881"];

void main(){
  runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyApp(),
    )
    
  );
}

Widget buidElements(int index){
  return Container(
    height: 100,
    margin: EdgeInsets.all(10.0), //const EdgeInsets.all(10.0)
    color: Color(int.parse(colors[index], radix: 16)),
    child: Center(
      child: Text(colors[index],
        style: TextStyle(color: Colors.white, fontSize: 20.0),
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Mi tab bar"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "Telefono", icon: Icon(Icons.smartphone),),
              Tab(text: "Camara", icon: Icon(Icons.camera_alt),),
              Tab(
                text: "Contactos", icon: Icon(Icons.contacts),
                ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero, //elimina los margenes
            children: <Widget>[
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Image.network("https://picsum.photos/250?image=9"),
                ),
              ListTile(
                title: Text("Menu 1"),
                trailing: Icon(Icons.contacts),
                onTap: () async {
                    Navigator.of(context).pop(); //cierra el Sidemenu y después carga la siguiente vista
                    var datos = await Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=> PantallaDos(
                      datosRecibidos: "Datos de la pantalla 1",
                    )
                  ));
                  //print("cambiando a la siguiente vista..");
                  print(datos);
                },
              ),
              ListTile(
                title: Text("Formuario"),
                trailing: Icon(Icons.contact_mail),
                onTap: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=> PantallaTres(
                      datosRecibidos: "Datos de la pantalla 1",
                    )
                  ));
                },
              )
            ],
            ),
        ),
        body: TabBarView(children: <Widget>[
          //imprimir widget Snackbar
          Icon(Icons.smartphone, size: 200.0,),
          ListView.builder(
            itemCount: colors.length,
            itemBuilder: (context, index) => 
              buidElements(index),
            
          ),
          Icon(Icons.contacts, size: 200.0,),
        ],),
      ),
    );
  }
}
