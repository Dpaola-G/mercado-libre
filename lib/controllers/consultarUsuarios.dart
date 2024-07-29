import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<Usuarios>> consultausuarios() async {
  final response = await http.get(
      Uri.parse('https://apirestnodeexpressmongodb.onrender.com/api/users'));
  if (response.statusCode == 200) {
    List<dynamic> body = jsonDecode(response.body);
    List<Usuarios> usuarios = body.map((dynamic item) => Usuarios.fromJson(item)).toList();
    return usuarios;
  } else {
    throw Exception('Failed to load users');
  }
}

class Usuarios {
  final String name;
  final String email;

  const Usuarios({
    required this.name,
    required this.email,
  });

  factory Usuarios.fromJson(Map<String, dynamic> json) {
    return Usuarios(
      name: json['name'],
      email: json['email'],
    );
  }
}
