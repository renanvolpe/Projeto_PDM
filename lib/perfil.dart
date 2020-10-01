import 'package:flutter/material.dart';
import 'package:kook/appbar.dart';
import 'package:kook/menu.dart';

class Perfil extends StatefulWidget {
  const Perfil({Key key}) : super(key: key);
  @override
  _Perfil createState() => _Perfil();
}

class _Perfil extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarKook(),
      body: TelaPerfil(),
      drawer: menuKook(context),
    );
  }
}

class TelaPerfil extends StatefulWidget {
  const TelaPerfil({Key key}) : super(key: key);
  @override
  _TelaPerfil createState() => _TelaPerfil();
}

class _TelaPerfil extends State<TelaPerfil> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Color.fromRGBO(4, 52, 101, 1.0),
            height: 60,
            child: Center(
              child: Text('Meu Perfil', 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  fontSize: 24.0,
                  fontFamily: 'Aclonica'
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                dadosContainer('Nome:', 'Tiago Faria'),
                dadosContainer('E-mail:', 'tiago.faria@aluno.ifsp.edu.br'),
                dadosContainer('CPF:', '123.456.789-00'),
              ],
            ),  
          ),
          Container(
            color: Colors.black,
            height: 60.0,
          ),
        ],
      ),
    );
  }

  Container dadosContainer(titulo, texto) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black12, width: 1),
          top: BorderSide(color: Colors.black12, width: 1),
        )
      ),
      child: Column(
        children: [
          Padding (
            padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
            child: Text(titulo,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Aclonica',
                fontSize: 21.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding (
            padding: const EdgeInsets.only(top: 10.0, bottom: 30.0),
            child: Text(texto,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Aclonica',
                fontSize: 21.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}