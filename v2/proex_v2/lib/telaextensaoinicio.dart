// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:proex_v2/menulateral.dart';
import 'package:proex_v2/telaextensao.dart';
import 'package:proex_v2/telaprincipal.dart';


class TelaExtensaoInicio extends StatefulWidget {
  const TelaExtensaoInicio({Key? key}) : super(key: key);

  @override
  State<TelaExtensaoInicio> createState() => _TelaExtensaoInicioState();
}

class _TelaExtensaoInicioState extends State<TelaExtensaoInicio> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: appBarTelaExtensao(),
        drawer: MenuLateral(),
        body: bodyTelaExtensaoInicio(context),
      ),
    );
  }
}
Widget bodyTelaExtensaoInicio(context){
  return SingleChildScrollView(
      child: Column(
        children: [
          meuPaddingPadrao(
            context,
            corPrimaria: Color.fromRGBO(150, 30, 30, 1),
            corSecundaria:Colors.white ,
            corFontePrimaria: Color.fromARGB(255, 248, 244, 244),
            corFonteSecundaria: Color.fromARGB(255, 193, 192, 192),
            icone:'assets/images/mundinho.png' ,
            titulo: 'Pró-Reitoria de Extensão e Assuntos Comunitários ',
            tamanhoFontePrimaria: 16,
            subTitulo: 'A PROEX é o órgão encarregado pela gestão das atividades de extensão...',
            tamanhoFonteSecundaria: 12,
          ),
          meuPaddingPadrao(
            context,
            corPrimaria:Colors.white ,
            corSecundaria:Color.fromRGBO(150, 30, 30, 1) ,
            corFontePrimaria:  Colors.black87,
            corFonteSecundaria: Colors.black54,
            icone:'assets/images/conexao.png',
            titulo: 'Organização da PROEX',
            tamanhoFontePrimaria: 18,
            subTitulo: 'Conheça nossos setores',
            tamanhoFonteSecundaria: 14,
          ),
          meuPaddingPadrao(
            context,
            corPrimaria: Color.fromRGBO(150, 30, 30, 1) ,
            corSecundaria:Colors.white ,
            corFontePrimaria: Color.fromARGB(255, 248, 244, 244),
            corFonteSecundaria: Color.fromARGB(255, 193, 192, 192),
            icone:'assets/images/mundinho.png' ,
            titulo: 'Pró-Reitoria de Extensão e Assuntos Comunitários ',
            tamanhoFontePrimaria: 16,
            subTitulo: 'A PROEX é o órgão encarregado pela gestão das atividades de extensão...',
            tamanhoFonteSecundaria: 12,
          ),
          meuPaddingPadrao(
            context,
            corPrimaria:Colors.white ,
            corSecundaria:Color.fromRGBO(150, 30, 30, 1),
            corFontePrimaria:  Colors.black87,
            corFonteSecundaria: Colors.black54,
            icone:'assets/images/conexao.png',
            titulo: 'Organização da PROEX',
            tamanhoFontePrimaria: 18,
            subTitulo: 'Conheça nossos setores',
            tamanhoFonteSecundaria: 14,
          ),
          meuPaddingPadrao(
            context,
            corPrimaria: Color.fromRGBO(150, 30, 30, 1) ,
            corSecundaria:Colors.white ,
            corFontePrimaria: Color.fromARGB(255, 248, 244, 244),
            corFonteSecundaria: Color.fromARGB(255, 193, 192, 192),
            icone:'assets/images/mundinho.png' ,
            titulo: 'Pró-Reitoria de Extensão e Assuntos Comunitários ',
            tamanhoFontePrimaria: 16,
            subTitulo: 'A PROEX é o órgão encarregado pela gestão das atividades de extensão...',
            tamanhoFonteSecundaria: 12,
          ),
          meuPaddingPadrao(
            context,
            corPrimaria:Colors.white ,
            corSecundaria:Color.fromRGBO(150, 30, 30, 1) ,
            corFontePrimaria:  Colors.black87,
            corFonteSecundaria: Colors.black54,
            icone:'assets/images/conexao.png',
            titulo: 'Organização da PROEX',
            tamanhoFontePrimaria: 18,
            subTitulo: 'Conheça nossos setores',
            tamanhoFonteSecundaria: 14,
          ),
          meuPaddingPadrao(
            context,
            corPrimaria: Color.fromRGBO(150, 30, 30, 1),
            corSecundaria:Colors.white ,
            corFontePrimaria: Color.fromARGB(255, 248, 244, 244),
            corFonteSecundaria: Color.fromARGB(255, 193, 192, 192),
            icone:'assets/images/mundinho.png' ,
            titulo: 'Pró-Reitoria de Extensão e Assuntos Comunitários ',
            tamanhoFontePrimaria: 16,
            subTitulo: 'A PROEX é o órgão encarregado pela gestão das atividades de extensão...',
            tamanhoFonteSecundaria: 12,
          ),
          meuPaddingPadrao(
            context,
            corPrimaria:Colors.white ,
            corSecundaria:Color.fromRGBO(150, 30, 30, 1) ,
            corFontePrimaria:  Colors.black87,
            corFonteSecundaria: Colors.black54,
            icone:'assets/images/conexao.png',
            titulo: 'Organização da PROEX',
            tamanhoFontePrimaria: 18,
            subTitulo: 'Conheça nossos setores',
            tamanhoFonteSecundaria: 14,
          ),
        ],
      ),
    );
}