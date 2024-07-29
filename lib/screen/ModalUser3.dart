import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/consultarUsuarios.dart';

ModalUsuario(BuildContext context) {
  final consultaUsuarios = consultausuarios();
  print(consultaUsuarios);

  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Icon(Icons.event),
              ),
            ],
            backgroundColor: Colors.red[100],
            title: Text("usuarios"),
          ),
          body: Center(
            child: Text("hola"),
          ),
        );
      });
}
