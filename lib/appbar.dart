import 'package:flutter/material.dart';

PreferredSize appbarKook() {
  return PreferredSize(
    preferredSize: const Size.fromHeight(60),
    child: AppBar(        
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 100.0),
            child: Text("KooK",
              style: TextStyle(
                fontFamily: 'BungeeInline', 
                fontSize: 25.00,
              ),
            ),
          ),
          Image.asset('imagens/logo.png', width: 50.0, height: 50.0,),
        ],
      ),
      centerTitle: true,
    ),
  );
}