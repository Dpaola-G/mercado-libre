import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Adminusers extends StatefulWidget {
  const Adminusers({super.key});

  @override
  State<Adminusers> createState() => _AdminusersState();
}

class _AdminusersState extends State<Adminusers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[200],
          foregroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back, color: Colors.white),
          ),
          title: Text("administrar usuarios",
              style: TextStyle(color: Colors.white)),
        ),
        body: ListView(
          children: [
            Image.network(
              "https://cdn-icons-png.flaticon.com/512/1535/1535024.png",
              width: 300,
              height: 300,
            ),
            SizedBox(height: 16.0),
            ListTile(
              title: Text("Buscar usuarios"),
              leading: Icon(Icons.connect_without_contact_rounded),
              trailing: Icon(Icons.wallet_giftcard_outlined),
              onTap: () {},
            ),
            SizedBox(height: 16.0),
            ListTile(
              title: Text("usuarios"),
              leading: Icon(Icons.connect_without_contact_rounded),
              trailing: Icon(Icons.wallet_giftcard_outlined),
              onTap: () {},
            ),
            SizedBox(height: 16.0),
            ListTile(
              title: Text("solicitudes"),
              leading: Icon(Icons.connect_without_contact_rounded),
              trailing: Icon(Icons.wallet_giftcard_outlined),
              onTap: () {},
            ),
            SizedBox(height: 16.0),
            ListTile(
              title: Text("informes"),
              leading: Icon(Icons.connect_without_contact_rounded),
              trailing: Icon(Icons.wallet_giftcard_outlined),
              onTap: () {},
            ),
          ],
        ));
  }
}
