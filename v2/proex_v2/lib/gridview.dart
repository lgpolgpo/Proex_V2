// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'telaprincipal.dart';

class TelaExtensaoProcessos extends StatefulWidget {
  const TelaExtensaoProcessos({Key? key}) : super(key: key);

  @override
  State<TelaExtensaoProcessos> createState() => _TelaExtensaoProcessosState();
}

class _TelaExtensaoProcessosState extends State<TelaExtensaoProcessos> {
  @override
  Widget build(BuildContext context) {
    return telaExtensaoProcessos(context);
  }
}

Widget telaExtensaoProcessos(context){
  return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 15,
      children: [
        cardizinho(
          context,
          corPrimaria:Color.fromRGBO(150, 30, 30, 1) ,
          corFonte: Colors.white,
          tamanhoFonte: 13,
          texto: 'Conheça nossos colaboradores',
          icone: 'assets/images/colaboradores.png',
        ),
        cardizinho(
          context,
          corPrimaria:Colors.white,
          corFonte: Colors.black ,
          tamanhoFonte: 13,
          texto: 'Identidade Visual PROEX',
          icone: 'assets/images/mente.png',
        ),
        cardizinho(
          context,
          corPrimaria:Color.fromRGBO(150, 30, 30, 1) ,
          corFonte: Colors.white,
          tamanhoFonte: 10,
          texto: 'Identidade visual do centro cultural UFSJ',
          icone: 'assets/images/mesadereuniao.png',
        ),
        cardizinho(
          context,
          corPrimaria:Color.fromRGBO(150, 30, 30, 1) ,
          corFonte: Colors.white,
          tamanhoFonte: 13,
          texto: 'Conheça nossos colaboradores',
          icone: 'assets/images/colaboradores.png',
        ),
        cardizinho(
          context,
          corPrimaria:Colors.white,
          corFonte: Colors.black ,
          tamanhoFonte: 13,
          texto: 'Identidade Visual PROEX',
          icone: 'assets/images/mente.png',
        ),
        cardizinho(
          context,
          corPrimaria:Color.fromRGBO(150, 30, 30, 1) ,
          corFonte: Colors.white,
          tamanhoFonte: 10,
          texto: 'Identidade visual do centro cultural UFSJ',
          icone: 'assets/images/mesadereuniao.png',
        ),
      ],
    );
}