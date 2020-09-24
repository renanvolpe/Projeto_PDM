import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Container menuKook(context) {
  return Container(
    width: 300,
    color: Colors.black,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.home, color: Colors.white,),
            Padding(padding: const EdgeInsets.all(20.0),
              child: Text(
                'Página Inicial', style: TextStyle(color: Colors.white, fontFamily: 'Aclonica', fontSize: 20,),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.book, color: Colors.white,),
            Padding(padding: const EdgeInsets.all(20.0),
              child: Text(
                'Cardápio', style: TextStyle(color: Colors.white, fontFamily: 'Aclonica', fontSize: 20,),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.wallet, color: Colors.white,),
            Padding(padding: const EdgeInsets.all(20.0),
              child: Text(
                'Minha Conta', style: TextStyle(color: Colors.white, fontFamily: 'Aclonica', fontSize: 20,),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.userAlt, color: Colors.white,),
            Padding(padding: const EdgeInsets.all(20.0),
              child: Text(
                'Meu Perfil', style: TextStyle(color: Colors.white, fontFamily: 'Aclonica', fontSize: 20,),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.signOutAlt, color: Colors.white,),
            Padding(padding: const EdgeInsets.all(20.0),
              child: Text(
                'Sair', style: TextStyle(color: Colors.white, fontFamily: 'Aclonica', fontSize: 20,),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}