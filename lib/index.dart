import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'appbar.dart';
import 'menu.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key key}) : super(key: key);
  @override
  _TelaInicial createState() => _TelaInicial();
}

class _TelaInicial extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: appbarKook(),
      backgroundColor: Colors.white,
      body: Center(
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
                    fontSize: 24.0,
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
      ),
      drawer: menuKook(context),
    );
  }
}