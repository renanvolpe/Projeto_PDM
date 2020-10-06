//import 'dart:convert';
import 'package:http/http.dart' as http;
//import 'cliente.dart';

class Controller {
  static const ROOT = 'http://localhost/kookMobile/kookactions.php';
  static const ADD_USER_ACTION = 'ADD_USER';

  static Future<String> addUser(String nome, String email, String cpf, String senha) async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = ADD_USER_ACTION;
      map['nome'] = nome;
      map['email'] = email;
      map['cpf'] = cpf;
      map['senha'] = senha;
      final response = await http.post(ROOT, body: map);
      print('resposta de addUser: ${response.body}');
      if(200 == response.statusCode){
        return response.body;
      } else {
        return "Erro";
      }
    } catch (e) {
      return "Erro";
    }
  }
}