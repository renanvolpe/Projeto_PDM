import 'package:flutter/material.dart';

Future modalCadastro(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SingleChildScrollView(
                  child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Positioned(
                right: -40.0,
                top: -40.0,
                child: InkResponse(
                  onTap: () { Navigator.of(context).pop(); },
                  child: CircleAvatar(
                    child: Icon(Icons.close),
                    backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.black12, width: 1),
                      )
                    ),
                    height: 40,
                    width: double.infinity,
                    child: Text('Cadastre-se no KooK',
                      style: TextStyle(
                        fontFamily: 'Aclonica',
                        fontSize: 21.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  textInput('Nome e Sobrenome', false),
                  textInput('E-mail', false),
                  textInput('CPF', false),
                  textInput('Senha', true),
                  textInput('Confirmar Senha', true),
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(20, 18, 20, 18),
                      child: RaisedButton(
                        color: Color.fromRGBO(4, 53, 101, 1.0),
                        child: Text('Cadastrar',
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
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
  );
}

Padding textInput(placeholder, visivel) {
  return Padding(
    padding: EdgeInsets.only(top: 20.0),
    child: TextField(
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
    ),
  );
}