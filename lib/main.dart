import 'package:flutter/material.dart';
import 'package:kook/categorias.dart';
import 'package:kook/cliente.dart';
import 'package:kook/conta.dart';
import 'package:kook/index.dart';
import 'package:kook/perfil.dart';
import 'package:kook/produtos.dart';
import 'cadastro.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_session/flutter_session.dart';
import 'dart:async';
import 'dart:convert';

void main() => runApp(MyApp());

final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
final _loginKey = GlobalKey<FormState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Index();
  }
}

class Index extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KooK',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black),
      routes: {
        //'/': ( context) => Index(), // Define Index como primeira rota
        '/index': (context) => TelaInicial(), // Define rota para tela de Categorias
        '/categorias': (context) => Categorias(), // Define rota para tela de Categorias
        '/produtos': (context) => Produtos(), // Define rota para tela de Produtos
        '/conta': (context) => Conta(), // Define rota para tela da Conta
        '/perfil': (context) => Perfil(), // Define rota para tela da Conta
      },
      home: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.black,
        body: const Login(),
      )
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    final emailField = loginInput('E-mail', false, _emailController);
    final passwordField = loginInput('Senha', true, _senhaController);

    final buttonLogin = ButtonTheme(
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20, 18, 20, 18),
      child: RaisedButton(
        color: Color.fromRGBO(4, 53, 101, 1.0),
        child: Text('Entrar',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Aclonica',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () { 
          if (_loginKey.currentState.validate()) {
            authUser(context, _emailController.text, _senhaController.text);
          }
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );

    final buttonCadastro = ButtonTheme(
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20, 18, 20, 18),
      child: RaisedButton(
        color: Color.fromRGBO(255, 0, 0, 1.0),
        child: Text('Cadastre-se',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Aclonica',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
            modalCadastro(context);
          },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );

    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Center(
        child: SingleChildScrollView (
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(238, 238, 238, 1.0),
              border: Border.all(color: Color.fromRGBO(4, 53, 101, 1.0), width: 3, ),
              borderRadius: BorderRadius.all(Radius.circular(10.0) ),
            ),
            padding: EdgeInsets.all(40.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Bem-vindo ao KooK!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Aclonica',
                    fontSize: 25.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(height: 150.0, child: Image.asset('imagens/logo1.png', fit: BoxFit.contain)),
                ),
                Text('Faça login para continuar',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Aclonica',
                    fontSize: 20.0,
                  ),
                ),
                Form(
                  key: _loginKey,
                  child: Column(
                    children: [
                      SizedBox(height: 20.0,),emailField,
                      SizedBox(height: 20.0,),passwordField,
                    ],
                  ),
                ),
                SizedBox(height: 20.0,),buttonLogin,
                SizedBox(height: 20.0,),buttonCadastro,                
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField loginInput(placeholder, visivel, inputController) {
    return TextFormField(
      controller: inputController,
      validator: (value) {
        if (value.isEmpty) {
          return "Preencha este campo";
        }
        return null;
      },
      obscureText: visivel,
      style: TextStyle(
        fontFamily: 'Abel',
        fontSize: 18.0,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 18, 20, 18),
        hintText: placeholder,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }


  static Future<List<Cliente>> authUser(context, String email, String senha) async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = "AUTH_USER";
      map['email'] = email;
      map['senha'] = senha;
      final response = await http.post('http://192.168.1.181/kookMobile/kookactions.php', body: map);
      print('Resposta: ${response.body}');
      if(200 == response.statusCode && response.body != "0"){
        var session = FlutterSession();
        Map<String, dynamic> user = jsonDecode(response.body);
        await session.set('id_cliente', user['id_cliente']);
        await session.set('nome_cliente', user['nome_cliente']);
        await session.set('email_cliente', user['email_cliente']);
        await session.set('cpf_cliente', user['cpf_cliente']);
        Navigator.pushNamed(context, '/index');
      } else {
        final snackBar = SnackBar(
          content: Text('Usuário e/ou senha incorreto(s)!'),
          action: SnackBarAction(
            label: 'OK',
            onPressed: () { },
          ),
        );
        Scaffold.of(context).showSnackBar(snackBar);
        return List<Cliente>();
      }
    } catch (e) {
      return List<Cliente>(); // return an empty list on exception/error
    }
  }
}