import 'package:flutter/material.dart';
import 'package:kook/appbar.dart';
import 'package:kook/menu.dart';

class Produtos extends StatefulWidget {
  const Produtos({Key key}) : super(key: key);
  @override
  _Produtos createState() => _Produtos();
}

class _Produtos extends State<Produtos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarKook(),
      body: TelaProdutos(),
      drawer: menuKook(context),
    );
  }
}

class TelaProdutos extends StatefulWidget {
  const TelaProdutos({Key key}) : super(key: key);
  @override
  _TelaProdutos createState() => _TelaProdutos();
}

class _TelaProdutos extends State<TelaProdutos> {
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
          color: Color.fromRGBO(4, 52, 101, 1.0),
          height: 60,
          child: Center(
            child: Text(
              'Produtos',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  fontSize: 21.0,
                  fontFamily: 'Aclonica'),
            ),
          ),
        ),
        GerarProdutos(
              itensinhos: itensinhos,
            ),
            GerarProdutos(
              itensinhos: itensinhos,
            ),
            GerarProdutos(
              itensinhos: itensinhos,
            ),
      ],
    ));
  }
}

class Produto extends StatefulWidget {
  final Itens itensinhos;

  Produto({@required this.itensinhos});

  @override
  _Produto createState() => _Produto();
}

class _Produto extends State<Produto> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.white,
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(color: Colors.black12, width: 2))),
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.itensinhos.nomeProduto,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(4, 53, 101, 1.0),
                    fontFamily: 'Bungee Inline',
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
                Text(
                  widget.itensinhos.ingreditenteProduto,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(4, 53, 101, 1.0),
                    fontFamily: 'Bungee Inline',
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
            Text(
              widget.itensinhos.precoProduto.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(4, 53, 101, 1.0),
                fontFamily: 'Bungee Inline',
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            
            
          ],
        ),
        
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/conta');
      },
      
    );
  }
}

class Itens {
  Itens(
      {@required this.nomeProduto,
      this.ingreditenteProduto,
      this.precoProduto});

  String nomeProduto;
  String ingreditenteProduto;
  int precoProduto;
}

//Aqui vão ser inseridos a parte do banco
List<Itens> itensinhos = <Itens>[
  Itens(
      nomeProduto: 'Lineu',
      ingreditenteProduto: 'cheirinho de nota 10,',
      precoProduto: 100),
  Itens(
      nomeProduto: 'Lençol',
      ingreditenteProduto: 'verde perto,',
      precoProduto: 200),
  Itens(
      nomeProduto: 'goku',
      ingreditenteProduto: 'kamehameha',
      precoProduto: 100),
  Itens(
      nomeProduto: 'Cenoura',
      ingreditenteProduto: 'Bolo gostoso',
      precoProduto: 100),
  Itens(
      nomeProduto: 'Vegeta',
      ingreditenteProduto: 'kakaroto',
      precoProduto: 100),
  Itens(
      nomeProduto: 'bolo de cenoura',
      ingreditenteProduto: 'farofa de trigo',
      precoProduto: 100),
  Itens(
    nomeProduto: 'tablet', 
    ingreditenteProduto: 'dedos', 
    precoProduto: 100),
  Itens(
    nomeProduto: 'SSD', 
    ingreditenteProduto: 'velo 10', 
    precoProduto: 100),
  Itens(
      nomeProduto: 'pendrive', 
      ingreditenteProduto: '16gb',
      precoProduto: 100),
  Itens(
      nomeProduto: 'Naruto',
      ingreditenteProduto: 'Sasukeeeeee',
      precoProduto: 2),
  Itens(
    nomeProduto: 'mike', 
    ingreditenteProduto: 'Asauski', 
    precoProduto: 100),
  Itens(
      nomeProduto: 'Boo',
      ingreditenteProduto: 'Tomei um susto',
      precoProduto: 100),
  Itens(
    nomeProduto: 'Papel', 
    ingreditenteProduto: 'Arvore',
     precoProduto: 100),
  Itens(
      nomeProduto: 'Formar',
      ingreditenteProduto: 'Reza Bastante',
      precoProduto: 100),
  Itens(
      nomeProduto: 'Mouse', 
      ingreditenteProduto: 'mousepad', 
      precoProduto: 100),
];

class GerarProdutos extends StatefulWidget {
  final List<Itens> itensinhos;

  GerarProdutos({@required this.itensinhos});
  @override
  _GerarProdutos createState() => _GerarProdutos();
}

class _GerarProdutos extends State<GerarProdutos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        controller: ScrollController(), // IMPORTANTEEEEE
        shrinkWrap: true,
        itemCount: widget.itensinhos.length,
        itemBuilder: (context, i) {
          return Produto(itensinhos: widget.itensinhos[i]);
        },
      ),
    );
  }
}
