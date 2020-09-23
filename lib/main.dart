import 'package:flutter/material.dart';
import 'package:kook/appbar.dart';
import 'package:kook/categorias.dart';
import 'package:kook/conta.dart';
import 'package:kook/menu.dart';
import 'package:kook/produtos.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
        '/categorias': (context) => Categorias(), // Define rota para tela de Categorias
        '/produtos': (context) => Produtos(), // Define rota para tela de Produtos
        '/conta': (context) => Conta(), // Define rota para tela da Conta
      },
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: appbarKook(),
        body: const TelaInicial(),
        drawer: menuKook(),
      )
    );
  }
}

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key key}) : super(key: key);
  @override
  _TelaInicial createState() => _TelaInicial();
}

class _TelaInicial extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          Container(
            color: Color.fromRGBO(4, 52, 101, 1.0),
            height: 60,
            child: Center(
              child: Text('Bem-vindo(a), [usuário]', 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  fontSize: 21.0,
                  fontFamily: 'Aclonica'
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Text('Clique no ícone para abrir a câmera.',
                  style: TextStyle(
                    fontFamily: 'Aclonica',
                    fontSize: 18.0,
                  ),
                ),
                RaisedButton(
                  color: Colors.white,
                  elevation: 0,
                  onPressed: () { Navigator.pushNamed(context, '/categorias'); },
                  child: Icon(MdiIcons.qrcode, size: 120.0,),
                ),
              ],
            ),
          ),
          Container(
            color: Color.fromRGBO(0, 0, 0, 1.0),
            height: 60.0,
          )
        ],
      ),
    );
  }
}