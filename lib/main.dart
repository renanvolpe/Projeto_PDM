import 'package:flutter/material.dart';
import 'package:kook/categorias.dart';
import 'package:kook/conta.dart';
import 'package:kook/index.dart';
import 'package:kook/perfil.dart';
import 'package:kook/produtos.dart';
import 'cadastro.dart';

void main() => runApp(MyApp());

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
  @override
  Widget build(BuildContext context) {
    
    final emailField = TextField(
      obscureText: false,
      style: TextStyle(
        fontFamily: 'Abel',
        fontSize: 18.0,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 18, 20, 18),
        hintText: 'E-mail',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    final passwordField = TextField(
      obscureText: true,
      style: TextStyle(
        fontFamily: 'Abel',
        fontSize: 18.0,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 18, 20, 18),
        hintText: 'Senha',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

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
        onPressed: () { Navigator.pushNamed(context, '/index'); },
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
                SizedBox(height: 20.0,),emailField,
                SizedBox(height: 20.0,),passwordField,
                SizedBox(height: 20.0,),buttonLogin,
                SizedBox(height: 20.0,),buttonCadastro,
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text('Esqueceu sua Senha?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(4, 53, 101, 1.0),
                      fontFamily: 'Aclonica',
                      fontSize: 18.0,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}