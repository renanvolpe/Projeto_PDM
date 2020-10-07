import 'dart:convert';
import 'package:http/http.dart' as http;
import 'cliente.dart';

class Controller {
  static const ROOT = 'http://192.168.1.181/kookMobile/kookactions.php';
  static const _ADD_USER_ACTION = "ADD_USER";
  static const _GET_CAT_ACTION = "GET_CAT";

  static Future<String> addUser(String nome, String email, String cpf, String senha) async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = _ADD_USER_ACTION;
      map['nome'] = nome;
      map['email'] = email;
      map['cpf'] = cpf;
      map['senha'] = senha;
      final response = await http.post(ROOT, body: map);
      print('Resposta: ${response.body}');
      if(200 == response.statusCode){
        return response.body;
      } else {
        return "erro";
      }
    } catch (e) {
      return "Erro";
    }
  }

  static Future<String> getCat(int idRes) async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = _GET_CAT_ACTION;
      map['idRes'] = idRes;      
      final response = await http.post(ROOT, body: map);
      print('Resposta: ${response.body}');
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