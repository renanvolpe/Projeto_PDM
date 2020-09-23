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
      drawer: menuKook(),
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
              child: Text('Produtos', 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  fontSize: 21.0,
                  fontFamily: 'Aclonica'
                ),
              ),
            ),
          ),
          Produto(nome: 'Produto', ingredientes: 'Ingredientes', preco: 'RS20,00', proximaPagina: '/minhaConta'),
          Produto(nome: 'Produto', ingredientes: 'Ingredientes', preco: 'RS20,00', proximaPagina: '/minhaConta'),
          Produto(nome: 'Produto', ingredientes: 'Ingredientes', preco: 'RS20,00', proximaPagina: '/minhaConta'),
          Produto(nome: 'Produto', ingredientes: 'Ingredientes', preco: 'RS20,00', proximaPagina: '/minhaConta'),
          Produto(nome: 'Produto', ingredientes: 'Ingredientes', preco: 'RS20,00', proximaPagina: '/minhaConta'),
          Produto(nome: 'Produto', ingredientes: 'Ingredientes', preco: 'RS20,00', proximaPagina: '/minhaConta'),
          Produto(nome: 'Produto', ingredientes: 'Ingredientes', preco: 'RS20,00', proximaPagina: '/minhaConta'),
          Produto(nome: 'Produto', ingredientes: 'Ingredientes', preco: 'RS20,00', proximaPagina: '/minhaConta'),
          Produto(nome: 'Produto', ingredientes: 'Ingredientes', preco: 'RS20,00', proximaPagina: '/minhaConta'),
          Produto(nome: 'Produto', ingredientes: 'Ingredientes', preco: 'RS20,00', proximaPagina: '/minhaConta'),
        ],
      )
    );
  }
}

class Produto extends StatefulWidget {
  final String nome;
  final String ingredientes;
  final String proximaPagina;
  final String preco;

  Produto(
    {@required this.nome,this.ingredientes,this.preco,this.proximaPagina}
  );

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
          border: Border(bottom: BorderSide(color: Colors.black12, width: 2))
        ),
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.nome,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(4, 53, 101, 1.0),
                    fontFamily: 'Bungee Inline', 
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
                Text(
                  widget.ingredientes,
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
              widget.preco,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(4, 53, 101, 1.0),
                fontFamily: 'Bungee Inline',
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            )
          ],
        ),
      ),
      onPressed: () { Navigator.pushNamed(context, '/conta'); },
    );
  }
}