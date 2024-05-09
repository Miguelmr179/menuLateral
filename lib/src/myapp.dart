import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menulateral/src/homepage.dart';
import 'package:menulateral/src/pages/contacto.dart';
import 'package:menulateral/src/pages/empresa.dart';
import 'package:menulateral/src/pages/productos.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Interfaz menu",
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menu de opciones"),
        ),
        drawer: Menu(),
        body: Center(
          child: Text("Benvenido a la aplicacion menu de opciones lateral"),
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({super.key});
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text("Miguel"),
            accountEmail: Text("miguellanmer@gmail.com"),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcrUjmRK31XMlr-JoFDk3ExKmJU_QjfJiBsc2vmZMeGw&s"),
                    fit: BoxFit.cover)),
          ),
          Ink(
            color: Colors.blue,
            child: ListTile(
              title: Text("Empresa", style: TextStyle(color: Colors.lightBlueAccent)),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => EmpresaPage()
                ),
                );
              },
            ),
          ),
          Ink(
            color: Colors.blue,
            child: ListTile(
              title: Text("Contacto", style: TextStyle(color: Colors.lightBlueAccent)),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => ContactoPage()
                ),
                );
              },
            ),
          ),
          Ink(
            color: Colors.blue,
            child: ListTile(
              title: Text("Productos", style: TextStyle(color: Colors.lightBlueAccent)),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => ProductosPage()
                ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
