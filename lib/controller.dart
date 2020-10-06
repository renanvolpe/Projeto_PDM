import 'dart:convert';
//import 'dart:html';
import 'package:http/http.dart' as http;
import 'cliente.dart';

class Controller {
  static var client = new http.Client();
  static var url = Uri.parse("http://127.0.0.1:80");
  static const ROOT = 'http://127.0.0.1:80/kookMobile/kookactions.php';
  static const _ADD_USER_ACTION = 'ADD_USER';

  static Future<String> addUser(String nome, String email, String cpf, String senha) async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = _ADD_USER_ACTION;
      map['nome'] = nome;
      map['email'] = email;
      map['cpf'] = cpf;
      map['senha'] = senha;
      final response = await client.post('http://10.0.2.2/kookMobile/kookactions.php', body: map);
      print('resposta de addUser: ${response.body}');
      if(200 == response.statusCode){
        return response.body;
      } else {
        return "erro";
      }
    } catch (e) {
      return "Erro";
    }
  }
}