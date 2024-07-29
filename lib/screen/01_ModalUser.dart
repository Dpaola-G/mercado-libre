import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/ConsultarUsuarios.dart';

ModalEventos(BuildContext context){
  showModalBottomSheet(
    context: context, 
    builder: (context){
      return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.event),
              ),
          ],
          backgroundColor: Colors.red[100],
          title:Text("Usuario"),
        ),
        body: Center(
            child: Text("aqui van los eventos")
        ),
      );
    },
    );
}