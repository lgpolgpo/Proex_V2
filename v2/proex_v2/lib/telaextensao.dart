// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:proex_v2/gridview.dart';
import 'package:proex_v2/telaprincipal.dart';
import 'package:share/share.dart';

class TelaExtensao extends StatefulWidget {
  const TelaExtensao({Key? key}) : super(key: key);

  @override
  State<TelaExtensao> createState() => _TelaExtensaoState();
}

class _TelaExtensaoState extends State<TelaExtensao> {
  int paginaInicial=0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: paginaInicial,
      child: Scaffold(        
        appBar: AppBar(
          titleTextStyle: const TextStyle(fontSize: 18),        
          title: const Text('EXTENSÃO'),
          backgroundColor: const Color.fromRGBO(150, 30, 30, 1),      
          actions: [
              IconButton(
                onPressed: () {
                  Share.share('Bora Compartilhar!');
                },
                icon: const Icon(Icons.share),
              ),
              IconButton(
                onPressed: () {
                  
                },
                icon: const Icon(Icons.search),
              ),
          ],
          elevation: 100,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab ,
            isScrollable: true,
           
            //indicatorSize: 5,
            tabs: [
              Tab(text: 'Inicio'),
              Tab(text: 'Processos e anexos'),
              Tab(text: 'Políticas'),
              Tab(text: 'Projetos e programas'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            telaExtensaoInicio(),
            telaExtensaoProcessos(context),
            contrutordePagina('Políticas'),
            contrutordePagina('Projetos e programas'),
          ],
        ),
    ),
  );
  
  }
}
Widget contrutordePagina(String text)=>Center(
    child:Text(
      text
    ),
  );

class telaExtensaoInicio extends StatefulWidget {
  const telaExtensaoInicio({Key? key}) : super(key: key);

  @override
  State<telaExtensaoInicio> createState() => _telaExtensaoInicioState();
}

class _telaExtensaoInicioState extends State<telaExtensaoInicio> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
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
        ],
      ),
    );
  }
}