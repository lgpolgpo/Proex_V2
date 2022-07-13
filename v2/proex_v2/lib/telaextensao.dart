// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:proex_v2/main.dart';
import 'package:proex_v2/telaextensaoinicio.dart';
import 'package:proex_v2/telaextensaoprocessos.dart';
import 'package:share/share.dart';

class TelaExtensao extends StatefulWidget {
  const TelaExtensao({Key? key}) : super(key: key);

  @override
  State<TelaExtensao> createState() => _TelaExtensaoState();
}

class _TelaExtensaoState extends State<TelaExtensao> /*with SingleTickerProviderStateMixin*/ {
  /*final TabController paginaInicial;
  @override
  void estadoinicial(){
    super.estadoinicial();
    paginaInicial = TabController(length: 4 ,vsync: this);
  }
  @override
  void dispose(){
    paginaInicial.dispose();
    super.dispose();
  }*/
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(        
        appBar: appBarTelaExtensao(),
        body: TabBarView(
          children: [
            TelaExtensaoInicio(),
            TelaExtensaoProcessos(),
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

AppBar appBarTelaExtensao(){
  return  AppBar(
          titleTextStyle: const TextStyle(fontSize: 18),        
          title: const Text('EXTENSÃO'),
          backgroundColor: vermelhoProex ,      
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
        );
}