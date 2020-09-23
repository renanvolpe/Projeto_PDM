import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:kook/appbar.dart';
import 'package:kook/menu.dart';

class Conta extends StatefulWidget {
  @override
  _Conta createState() => _Conta();
}

class _Conta extends State<Conta> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarKook(),
      body: TelaConta(),
      drawer: menuKook(),
    );
  }
}

class TelaConta extends StatefulWidget {
  @override
  _TelaConta createState() => _TelaConta();
}

class _TelaConta extends State<TelaConta> {
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Color.fromRGBO(4, 52, 101, 1.0),
            height: 60,
            child: Center(
              child: Text('Conta da Mesa', 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  fontSize: 21.0,
                  fontFamily: 'Aclonica'
                ),
              ),
            ),
          ),
          TituloConta(),
          MostraCarrinho(Produto: 'Lineu', Preco: 'RS100,00'),
          MostraCarrinho(Produto: 'RG', Preco: 'RS30,00'),
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 105, 146, 1.0),
            ),
            child: Container(
              child: Center(
                child: Text(
                  'Meus pedidos', //formatação e decoração dos texto
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Bungee Inline', //fonte
                    fontWeight: FontWeight.bold, //em negrito
                    fontSize: 30.0, // tamanho
                  ),
                ),
              ),
            )
          ),
          TituloConta(),
          MostraCarrinho(Produto: 'Lineu', Preco: 'RS100,00'),
          MostraCarrinho(Produto: 'RG', Preco: 'RS30,00'),
        ],
      ),
    );
  }
}

class MostraCarrinho extends StatefulWidget {
  String Produto;
  String Preco;

  MostraCarrinho({@required this.Produto, this.Preco});
  @override
  _MostraCarrinhoState createState() => _MostraCarrinhoState();
}

class _MostraCarrinhoState extends State<MostraCarrinho> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black12, width: 2))
            //.all(color: Color.fromRGBO(4, 53, 101, 1.0), width: 3)
            ),
        child: Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.only(left: 50, right: 50, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.Produto, //formatação e decoração dos texto
                textAlign: TextAlign.left,

                style: TextStyle(
                  color: Color.fromRGBO(4, 53, 101, 1.0),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bungee Inline', //fonte
                  fontSize: 30.0, // tamanho
                ),
              ),
              Expanded(
                child: Text(
                  widget.Preco, //formatação e decoração dos texto
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color.fromRGBO(4, 53, 101, 1.0),
                    fontFamily: 'Bungee Inline',
                    fontWeight: FontWeight.bold, //fonte
                    fontSize: 30.0, // tamanho
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class TituloConta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black, width: 5))),
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(left: 50, right: 50, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'PRODUTO', //formatação e decoração dos texto
            textAlign: TextAlign.left,

            style: TextStyle(
              color: Color.fromRGBO(4, 53, 101, 1.0),
              fontWeight: FontWeight.bold,
              fontFamily: 'Bungee Inline', //fonte
              fontSize: 30.0, // tamanho
            ),
          ),
          Expanded(
            child: Text(
              'PREÇO', //formatação e decoração dos texto
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color.fromRGBO(4, 53, 101, 1.0),
                fontFamily: 'Bungee Inline',
                fontWeight: FontWeight.bold, //fonte
                fontSize: 30.0, // tamanho
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

// FIM FUNÇÃO TITULOCONTA
//_______________________________________________________________________________________________________________

//_______________________________________________________________________________________________________________
// FUNÇÃO DE LISTAR OS PRODUTOS NO CARRINHO
List<CarrinhoCompra> ListaTotal;

class CarrinhoCompra {
  Float produto;
  Float preco;
  int i = 1;
  CarrinhoCompra temp;
  //Construtor
  CarrinhoCompra({this.produto, this.preco});

  void ListaCarrinhoCompra(Float prod, Float prec) {
    temp.produto = prod;
    temp.preco = prec;

    if (ListaTotal.length == null) {
      var ListaDeCompras =
          new List<CarrinhoCompra>.generate(1, (index) => null);
    }
    ListaTotal.add(temp);
  }
}
