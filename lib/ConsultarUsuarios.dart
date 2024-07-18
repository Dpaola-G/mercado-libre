// ignore: file_names
import 'dart:convert';

import 'package:http/http.dart' as http;

Future<String> fetchAlbum() async {
  final response = await http.get(
      Uri.parse('https://apirestnodeexpressmongodb.onrender.com/api/users'));
  if (response.statusCode == 200) {
    return jsonEncode(response.body);
  } else {
    throw Exception('Faild to load');
  }
}

// Este es un texto de ejemplo para aprender a typear en un teclado mecanico
// julieth y juan carlos estan muy enamorados