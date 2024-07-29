import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/01_ModalUser.dart';
import 'package:flutter_application_1/screen/ModalConsultarUsuarios.dart'; // Importa el archivo correcto

class MenuUsers extends StatefulWidget {
  const MenuUsers({super.key});

  @override
  State<MenuUsers> createState() => _MenuUsersState();
}

class _MenuUsersState extends State<MenuUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[400],
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          'Administrar Usuarios',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Image.network(
            "https://cdn-icons-png.flaticon.com/512/1535/1535024.png",
            width: 200,
            height: 200,
          ),
          ListTile(
            title: Text("Usuarios"),
            leading: Icon(Icons.connect_without_contact_rounded),
            trailing: Icon(Icons.arrow_circle_right_outlined),
            onTap: () {
              ModalConsultarUsuarios(
                  context); // Llama a la función ModalConsultarUsuarios
            },
          ),
          ListTile(
            title: Text("Solicitudes"),
            leading: Icon(Icons.connect_without_contact_rounded),
            trailing: Icon(Icons.social_distance_sharp),
            onTap: () {
              ModalEventos(context);
            },
          ),
          ListTile(
            title: Text("Informes"),
            leading: Icon(Icons.connect_without_contact_rounded),
            trailing: Icon(Icons.edit_document),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
