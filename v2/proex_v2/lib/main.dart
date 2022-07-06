// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:proex_v2/menulateral.dart';
import 'telaprincipal.dart';
import 'telaextensao.dart';

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
      'TelaExtensao':(context) => TelaExtensao(),
      //'Tela 1':(context) => Tela1();
      //'Tela 2':(context) => Tela2();
    },
    debugShowCheckedModeBanner: false,
    );
  }
}
