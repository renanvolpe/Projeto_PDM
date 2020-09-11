import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:convert';

//

var lista = new List<int>.generate(10, (i) => i + 1);

//_______________________________________________________________________________________________________________*/
// INICIO MAIN
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FirstRoute();
  }
}
// FIM MAIN
//_______________________________________________________________________________________________________________*/

//_______________________________________________________________________________________________________________*/

// PAGINA HOME E PRIMEIRA PAGINA
class FirstRoute extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Rotas',

        //define first como rota inicil
        routes: {
          //'/': ( context) => FirstRoute(), // Define FirstRoute como primeira rota

          '/second': (context) =>
              SecondRoute(), // define a segunda rota disponivel

          '/PaginaSalgado': (context) =>
              PaginaSalgado(), // Define a rota para salgados

          '/PaginaCarrinho': (context) => Carrinho(),
        },
        home: Scaffold(
            appBar: PreferredSize(
              preferredSize:
                  const Size.fromHeight(60), // Altera o tamanho do AppBar

              child: AppBar(
                // inicia o app

                title: const Center(
                  // Centraliza os componentes que estão nesse paretese

                  child: Text(
                    'Bem vindo(a), usuário', //formatação e decoração dos texto
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Bungee Inline', //fonte
                      fontWeight: FontWeight.bold, //em negrito
                      fontSize: 30.0, // tamanho
                    ),
                  ),
                ),

                //preferredSize: Size.fromHeight(50),

                backgroundColor: Color.fromRGBO(
                    4, 53, 101, 1.0), // define a cor de fundo do app Bar
                elevation: 0.0, // Tira a sombra de baixo do AppBar
              ),
            ),
            body: const MyStatefulWidget()));
  }
}
// FIM DA PRIMEIRA PAGINA
//_______________________________________________________________________________________________________________*/

//_______________________________________________________________________________________________________________*/
//CORPO DO FIRST ROUTE
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Center(
          child: RaisedButton(
            color: Colors.white, // Cor do botão
            elevation: 0, // elevação do botão
            onPressed: () {
              // inico função
              Navigator.pushNamed(
                  // pagina chamada da ação do btão
                  context,
                  '/second'); // Colola aqui a função de abrir a camera
            }, // fim função
            child: Container(
                // inicio container( para o botão)
                //width: double.infinity, // largura infinita para o botão

                margin: const EdgeInsets.all(50),
                padding: const EdgeInsets.only(top: 30),
                child: Image.asset("images/QRCode.jpeg")

                /*child: IconButton( // inserindo o icone do botão
                icon: const Icon(FontAwesomeIcons.qrcode, size: 150), // icone do FontAwesomeIcons
                // Entrada do icone com o tamanho destinado
                onPressed: () {},*/
                ),
          ),
        ),
        const Text(
          'Clique para abrir a Camera', //formatação e decoração dos texto
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Bungee Inline', //fonte
            fontWeight: FontWeight.bold, //em negrito
            fontSize: 30.0, // tamanho
          ),
        ),
      ],
    ));
  }
}
// FIM DO CORPO DA PRIMEIRA PAGINA
//_______________________________________________________________________________________________________________*/

//_______________________________________________________________________________________________________________*/
//Segunda Pagina
class SecondRoute extends StatefulWidget {
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            title: const Text(
              'Escolha Seu pedido', //formatação e decoração dos texto
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Bungee Inline', //fonte
                fontWeight: FontWeight.bold, //em negrito
                fontSize: 30.0, // tamanho
              ),
            ),
            backgroundColor: Color.fromRGBO(
                4, 53, 101, 1.0), // define a cor de fundo do app Bar
            elevation: 0.0, // Tira a sombra de baixo do AppBar
          ),
        ),
        body: SecondRouteCorpo());
  }
}
//  FIM HOME SEGUNDA PAGINA
//_______________________________________________________________________________________________________________*/

//_______________________________________________________________________________________________________________*/
// INICIO CORPO DA SEGUNDA PAGINA
class SecondRouteCorpo extends StatefulWidget {
  const SecondRouteCorpo({Key key}) : super(key: key);

  @override
  _SecondRouteCorpo createState() => _SecondRouteCorpo();
}

class _SecondRouteCorpo extends State<SecondRouteCorpo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          AnuncioProduto(
              Titulo: 'Salgados',
              Descricao: '',
              Icone: Icons.fastfood,
              ProximaPagina: '\PaginaLanche'),
          AnuncioProduto(
              Titulo: 'Doces',
              Descricao: '',
              Icone: Icons.cake,
              ProximaPagina: '\Paginadoce'),
          AnuncioProduto(
              Titulo: 'Bebidas',
              Descricao: '',
              Icone: Icons.local_cafe,
              ProximaPagina: '\Paginabebida'),
        ],
      ),
    );
  }
}
// FIM CORPO SEGUNDA PAGINA
//_______________________________________________________________________________________________________________*/

//_______________________________________________________________________________________________________________*/
// INICIO PAGINA DE SALGADOS
class PaginaSalgado extends StatefulWidget {
  const PaginaSalgado({Key key}) : super(key: key);

  @override
  _PaginaSalgado createState() => _PaginaSalgado();
}

class _PaginaSalgado extends State<PaginaSalgado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            title: const Text(
              'Selecione os salgados', //formatação e decoração dos texto
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Bungee Inline', //fonte
                fontWeight: FontWeight.bold, //em negrito
                fontSize: 30.0, // tamanho
              ),
            ),
            backgroundColor: Color.fromRGBO(
                4, 53, 101, 1.0), // define a cor de fundo do app Bar
            elevation: 0.0, // Tira a sombra de baixo do AppBar
          ),
        ),
        body: const PaginaSalgadoCorpo());
  }
}

// FIM PAGINA DE SALGADOS
//_______________________________________________________________________________________________________________*/

//_______________________________________________________________________________________________________________*/
//COMEÇO CORPO SALGADO

class PaginaSalgadoCorpo extends StatefulWidget {
  const PaginaSalgadoCorpo({Key key}) : super(key: key);

  @override
  _PaginaSalgadoCorpoState createState() => _PaginaSalgadoCorpoState();
}

class _PaginaSalgadoCorpoState extends State<PaginaSalgadoCorpo> {
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
      child: Column(
        children: [
          ListaProduto(
            NomeProduto: 'goku',
            Ingredientes: 'Créu',
            PrecoProduto: 'RS100,00',
            ProximaPagina: '/PaginaCarrinho',
          ),
          ListaProduto(
            NomeProduto: 'goku1',
            Ingredientes: 'Créu',
            PrecoProduto: 'RS100,00',
            ProximaPagina: '/PaginaCarrinho',
          ),
          ListaProduto(
            NomeProduto: 'goku2',
            Ingredientes: 'Créu',
            PrecoProduto: 'RS100,00',
            ProximaPagina: '/PaginaCarrinho',
          ),
          ListaProduto(
            NomeProduto: 'goku3',
            Ingredientes: 'Créu',
            PrecoProduto: 'RS100,00',
            ProximaPagina: '/PaginaCarrinho',
          ),
          ListaProduto(
            NomeProduto: 'goku4',
            Ingredientes: 'Créu',
            PrecoProduto: 'RS100,00',
            ProximaPagina: '/PaginaCarrinho',
          ),
          ListaProduto(
            NomeProduto: 'goku6',
            Ingredientes: 'Créu',
            PrecoProduto: 'RS100,00',
            ProximaPagina: '/PaginaCarrinho',
          ),
          ListaProduto(
            NomeProduto: 'goku7',
            Ingredientes: 'Créu',
            PrecoProduto: 'RS100,00',
            ProximaPagina: '/PaginaCarrinho',
          ),
          ListaProduto(
            NomeProduto: 'goku9',
            Ingredientes: 'Créu',
            PrecoProduto: 'RS100,00',
            ProximaPagina: '/PaginaCarrinho',
          ),
          ListaProduto(
            NomeProduto: 'goku10',
            Ingredientes: 'Créu',
            PrecoProduto: 'RS100,00',
            ProximaPagina: '/PaginaCarrinho',
          ),
        ],
      ),
    ));
  }

  /* <Widget>[

 
   
         Column(
          children: [
            
            ListaProduto(
              NomeProduto: 'Papell Higienico',
              Ingredientes: 'Muita Arvore',
              PrecoProduto: 'RS100,00',
              ProximaPagina: '/PaginaCarrinho',
            ),
            ListaProduto(
              NomeProduto: 'Papell Higienico',
              Ingredientes: 'Muita Arvore',
              PrecoProduto: 'RS100,00',
              ProximaPagina: '/PaginaCarrinho',
            ),
            
          ],
        ),
      


       ]*/

}

// FIM CORPO SALGADO
//_______________________________________________________________________________________________________________*/

//_______________________________________________________________________________________________________________*/
// INICIO CARRINHO
class Carrinho extends StatefulWidget {
  @override
  _CarrinhoState createState() => _CarrinhoState();
}

class _CarrinhoState extends State<Carrinho> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Container(
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.black, width: 5))),
            child: AppBar(
              title: const Text(
                'CONTA DA MESA', //formatação e decoração dos texto
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Bungee Inline', //fonte
                  fontWeight: FontWeight.bold, //em negrito
                  fontSize: 30.0, // tamanho
                ),
              ),
              backgroundColor: Color.fromRGBO(
                  4, 53, 101, 1.0), // define a cor de fundo do app Bar
              elevation: 20.0, // Tira a sombra de baixo do AppBar
            ),
          ),
        ),
        body: CorpoCarrinho());
  }
}

//FIM CARRINHO
//_______________________________________________________________________________________________________________*/
class CorpoCarrinho extends StatefulWidget {
  @override
  _CorpoCarrinhoState createState() => _CorpoCarrinhoState();
}

class _CorpoCarrinhoState extends State<CorpoCarrinho> {
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        children: [
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
              )),
          TituloConta(),
          MostraCarrinho(Produto: 'Lineu', Preco: 'RS100,00'),
          MostraCarrinho(Produto: 'RG', Preco: 'RS30,00'),
        ],
      )),
    );
  }
}
//_______________________________________________________________________________________________________________*/
//INICIO CORPO CARRINHO

//FIM CORPO CARRINHO
//_______________________________________________________________________________________________________________*/

//_______________________________________________________________________________________________________________*/
//Aqui ta uma função que recebe os argumentos "titulos", " descricao" e "Icone"
//Com esses, iremos criar a lista de tipos de comida

class AnuncioProduto extends StatefulWidget {
  IconData Icone;
  String Titulo;
  String Descricao;
  String ProximaPagina;

  AnuncioProduto(
      {@required this.Titulo, this.Descricao, this.Icone, this.ProximaPagina});

  @override
  _AnuncioProdutoState createState() => _AnuncioProdutoState();
}

class _AnuncioProdutoState extends State<AnuncioProduto> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 5.0, // soften the shadow
              spreadRadius: 2.0, //extend the shadow
              offset: Offset(
                5.0, // Move to right 10  horizontally
                5.0, // Move to bottom 10 Vertically
              ),
            )
          ],
          color: Colors.white,
          border: Border.all(color: Color.fromRGBO(4, 53, 101, 1.0), width: 3)),
      margin: EdgeInsets.only(left: 20, right: 20, top: 30),
      child: RaisedButton(
        color: Colors.white,
        child: Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(widget.Icone,
                    size: 120, color: Color.fromRGBO(4, 53, 101, 1.0)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.Titulo, //formatação e decoração dos texto
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(4, 53, 101, 1.0),
                        fontFamily: 'Bungee Inline', //fonte
                        fontWeight: FontWeight.bold, //em negrito
                        fontSize: 35.0, // tamanho
                      ),
                    ),
                    Text(
                      widget.Descricao, //formatação e decoração dos texto
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(4, 53, 101, 1.0),
                        fontFamily: 'Bungee Inline', //fonte
                        fontWeight: FontWeight.bold, //em negrito
                        fontSize: 10.0, // tamanho
                      ),
                    ),
                  ],
                ),
              ],
            )),
        onPressed: () {
          Navigator.pushNamed(context, '/PaginaSalgado');
        },
      ),
    );
  }
}
//  TERMINA FUNÇÃO ANUNCIA PRODUTO
//_______________________________________________________________________________________________________________*/

//_______________________________________________________________________________________________________________*/
// INICIA FUNÇÃO DE LISTAR PRODUTO
class ListaProduto extends StatefulWidget {
  String NomeProduto;
  String Ingredientes;
  String ProximaPagina;
  String PrecoProduto;

  ListaProduto(
      {@required this.NomeProduto,
      this.Ingredientes,
      this.PrecoProduto,
      this.ProximaPagina});

  @override
  _ListaProdutoState createState() => _ListaProdutoState();
}

class _ListaProdutoState extends State<ListaProduto> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.white,
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black12, width: 2))
            //.all(color: Color.fromRGBO(4, 53, 101, 1.0), width: 3)
            ),
        margin: EdgeInsets.only(top: 15),
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      widget.NomeProduto, //formatação e decoração dos texto
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(4, 53, 101, 1.0),
                        fontFamily: 'Bungee Inline', //fonte
                        fontWeight: FontWeight.bold, //em negrito
                        fontSize: 30.0, // tamanho
                      ),
                    ),
                  ),
                  Text(
                    widget.Ingredientes, //formatação e decoração dos texto
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(4, 53, 101, 1.0),
                      fontFamily: 'Bungee Inline', //fonte
                      fontSize: 18.0, // tamanho
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Text(
                widget.PrecoProduto, //formatação e decoração dos texto
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(4, 53, 101, 1.0),
                  fontFamily: 'Bungee Inline', //fonte
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0, // tamanho
                ),
              ),
            )
          ],
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/PaginaCarrinho');
      },
    );
  }
}
// TERMINA FUNÇÃO DE LISTAR PRODUTO
//_______________________________________________________________________________________________________________

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
// FIM CARRINHO
//_______________________________________________________________________________________________________________

//_______________________________________________________________________________________________________________
// INICIO FUNÇÃO TITULOCONTA
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
