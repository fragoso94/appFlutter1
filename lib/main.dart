import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi primera app"),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) => buidElements(index),
      )

    ); 
  }
}*/
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
              Tab(text: "Contactos", icon: Icon(Icons.contacts),),
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          Icon(Icons.smartphone, size: 200.0,),
          ListView.builder(
            itemCount: colors.length,
            itemBuilder: (context, index) => buidElements(index),
          ),
          Icon(Icons.contacts, size: 200.0,),
        ],),
      ),
    );
  }
}
