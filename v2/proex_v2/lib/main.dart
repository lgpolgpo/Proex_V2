// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:proex_v2/menulateral.dart';
import 'package:proex_v2/telaextensaoinicio.dart';
import 'package:proex_v2/telaextensaoprocessos.dart';
import 'telaprincipal.dart';
//import 'telaextensao.dart';

void main() {
  runApp(const ProexApp());
}


 class ProexApp extends StatefulWidget {
  const ProexApp({Key? key}) : super(key: key);

  @override
  State<ProexApp> createState() => _ProexAppState();
}

class _ProexAppState extends State<ProexApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    initialRoute: 'TelaPrincipal',
    routes: {
      'TelaPrincipal':(context) => MyHomePage(),
      'MenuLateral':(context) =>  MenuLateral() ,
      'TelaExtensaoInicio':(context) => TelaExtensaoInicio(),
      'TelaExtensaoProcessos':(context) => TelaExtensaoProcessos(),
      //'Tela 1':(context) => Tela1();
      //'Tela 2':(context) => Tela2();
    },
    debugShowCheckedModeBanner: false,
    );
  }
} 
  final Color vermelhoProex=Color.fromRGBO(150, 30, 30, 1);
