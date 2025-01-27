import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/ConsultarUsuarios.dart';

ModalConsultarUsuarios(BuildContext context) {
  dynamic fetchUsers;
  consultausuarios().then((consultarUsuarios) {
    fetchUsers = consultarUsuarios;

    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              actions: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.event),
                )
              ],
              backgroundColor: Colors.red[100],
              title: Text('Usuarios'),
            ),
            body: Center(
              child: Text(fetchUsers[0].name),
            ),
          );
        });
  });
}