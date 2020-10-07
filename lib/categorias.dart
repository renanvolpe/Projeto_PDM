import 'package:flutter/material.dart';
import 'package:kook/appbar.dart';
import 'package:kook/menu.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'controller.dart';

void initState() {
  Controller.getCat(1);
}

class Categorias extends StatefulWidget {
  const Categorias({Key key}) : super(key: key);
  @override
  _Categorias createState() => _Categorias();
}

class _Categorias extends State<Categorias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarKook(),
      body: TelaCategorias(),
      drawer: menuKook(context),
    );
  }
}

class TelaCategorias extends StatefulWidget {
  const TelaCategorias({Key key}) : super(key: key);
  @override
  _TelaCategorias createState() => _TelaCategorias();
}

class _TelaCategorias extends State<TelaCategorias> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Container(
              color: Color.fromRGBO(4, 52, 101, 1.0),
              height: 60,
              child: Center(
                child: Text('Categorias', 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1.0),
                    fontSize: 24.0,
                    fontFamily: 'Aclonica'
                  ),
                ),
              ),
            ),
            Categoria(titulo: 'Salgados', icone: FontAwesomeIcons.hamburger, proximaPagina: '\salgados'),
            Categoria(titulo: 'Doces', icone: FontAwesomeIcons.birthdayCake, proximaPagina: '\doces'),
            Categoria(titulo: 'Bebidas', icone: FontAwesomeIcons.cocktail, proximaPagina: '\bebidas'),
          ],
        ),
      ),
    );
  }
}

class Categoria extends StatefulWidget {
  final IconData icone;
  final String titulo;
  final String proximaPagina;

  Categoria(
    {@required this.titulo, this.icone, this.proximaPagina}
  );

  @override
  _Categoria createState() => _Categoria();
}

class _Categoria extends State<Categoria> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(4, 53, 101, 1.0),
              blurRadius: 3.0,
              spreadRadius: 2.0,
              offset: Offset(5.0, 5.0,),
            )
          ],
          color: Colors.white,
          border: Border.all(color: Color.fromRGBO(4, 53, 101, 1.0), width: 3)
        ),
        margin: EdgeInsets.only(left: 20, right: 20, top: 30),
        child: RaisedButton(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(widget.icone, size: 120, color: Color.fromRGBO(4, 53, 101, 1.0)),
                Text(
                  widget.titulo,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color.fromRGBO(4, 53, 101, 1.0),
                    fontFamily: 'Aclonica', 
                    fontWeight: FontWeight.bold, 
                    fontSize: 24.0,
                  ),
                ),
              ],
            ),
          ),
          onPressed: () { Navigator.pushNamed(context, '/produtos'); },
        ),
      ),
    );
  }
}