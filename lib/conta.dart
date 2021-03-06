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
      drawer: menuKook(context),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 5),
                child: Text('Valor Total: RS34.00',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontFamily: 'Aclonica',
                  ),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}

class TelaConta extends StatefulWidget {
  @override
  _TelaConta createState() => _TelaConta();
}

class _TelaConta extends State<TelaConta> {
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Container(
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
                    fontSize: 24.0,
                    fontFamily: 'Aclonica'
                  ),
                ),
              ),
            ),
            TituloConta(),
            GerarCarrinho(comprinhas: comprinha),
            Container(
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
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                      fontSize: 24.0,
                      fontFamily: 'Aclonica'
                  ),
                  ),
                ),
              )
            ),
            TituloConta(),
            GerarCarrinho(comprinhas: comprinha),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () { Navigator.pushNamed(context, '/categorias'); },
                    color: Color.fromRGBO(4, 52, 101, 1.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Color.fromRGBO(0, 105, 146, 1.0))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: Text('Adicionar Pedido',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1.0),
                          fontSize: 15.0,
                          fontFamily: 'Aclonica'
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () { Navigator.pushNamed(context, '/'); },
                    color: Color.fromRGBO(4, 52, 101, 1.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Color.fromRGBO(0, 105, 146, 1.0))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: Text('Encerrar Conta',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1.0),
                          fontSize: 15.0,
                          fontFamily: 'Aclonica'
                        ),
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
}

class Pedidos extends StatefulWidget {
  final Compras comprinhas;

  Pedidos({@required this.comprinhas});
  @override
  _Pedidos createState() => _Pedidos();
}

class _Pedidos extends State<Pedidos> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black12, width: 1))
        ),
        child: Container(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                widget.comprinhas.produto,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Tajawal',
                  fontSize: 24.0,
                ),
              ),
              Text(
                widget.comprinhas.preco.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Tajawal',
                  fontSize: 24.0,
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
          border: Border(bottom: BorderSide(color: Colors.black, width: 1))
        ),
        padding: EdgeInsets.only(top: 20, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Produto',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Tajawal',
                fontSize: 26.0,
              ),
            ),
            Text(
              'Preço',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.bold,
                fontSize: 26.0,
              ),
            ),
          ],
        ),
      )
    );
  }
}

List<Compras> comprinha = <Compras>[  
  Compras(produto: 'Lineu', preco: 2300),  
  Compras(produto: 'Notass', preco: 10),   
  Compras(produto: 'Vitao', preco: 1),   
  Compras(produto: 'Minha Nota', preco: 10),  
  Compras(produto: 'Papel Higienico', preco: 5),   
  Compras(produto: 'Arroz', preco: 23)
];

class Compras {  
  Compras({this.produto, this.preco});  
  final String produto;  
  final int preco;
}

class GerarCarrinho extends StatefulWidget {  
  final List<Compras> comprinhas;
  
  GerarCarrinho({@required this.comprinhas});  
  @override  
  _GerarCarrinho createState() => _GerarCarrinho();
}

class _GerarCarrinho extends State<GerarCarrinho> {  
  @override  
  Widget build(BuildContext context) {    
    return Container(      
      child: ListView.builder(        
        controller: ScrollController(), // IMPORTANTEEEEE        
        shrinkWrap: true,        
        itemCount: widget.comprinhas.length,        
        itemBuilder: (context, i) {                         
          return Pedidos(comprinhas: widget.comprinhas[i]);       
        },      
      ),    
    );  
  }
}
