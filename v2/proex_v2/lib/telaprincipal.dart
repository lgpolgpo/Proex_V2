

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'menulateral.dart';
import 'carrosel.dart';

class MyHomePage extends StatelessWidget{
  const MyHomePage({Key? key}) : super(key: key);

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: minhaAppBar(tituloAppBar: 'PRÓ-REITORIA DE EXTENSÃO UFSJ'),
      drawer: MenuLateral(),
      body:Container(
        padding: const EdgeInsets.all(5) ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselDemo(),
            meuBody1(),
            meuBody2(),
            //teste1(),
          ],
        ),
      ), 
    ); 
  }    
}

// ignore: must_be_immutable
AppBar minhaAppBar({ required String tituloAppBar}){
  return AppBar(
        titleTextStyle: const TextStyle(fontSize: 11),        
        title: Text(tituloAppBar),
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
    );
}


Widget meuBody1(){
  return const Padding(
              padding:EdgeInsets.all(8),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22), 
                    bottomRight: Radius.circular(22),
                  ),
                ),
                leading:Card(
                  color: Colors.white,
                  margin: EdgeInsets.all(0),
                  child:Image(
                        fit:BoxFit.contain ,
                        image: AssetImage('assets/images/mundinho.png'), 
                        alignment: Alignment.centerLeft,
                        width: 40.0,
                        height: 40.0,
                      ),
                ),
                title:Text(
                  'Pró-Reitoria de Extensão e Assuntos Comunitários ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 248, 244, 244),
                  ),
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  'A PROEX é o órgão encarregado pela gestão das atividades de extensão...',
                   style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 193, 192, 192),
                  ),
                textAlign: TextAlign.center,
                ), 
                tileColor: Color.fromRGBO(150, 30, 30, 1) , 
                trailing: Card(
                  color: Colors.white, 
                  margin: EdgeInsets.only(left:0 ,right: 10,top: 0,bottom: 0) ,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22), 
                      topRight: Radius.circular(22),
                      bottomLeft: Radius.circular(22),
                      bottomRight: Radius.circular(22),
                    ),
                  ),
                  child:IconButton(
                      onPressed: null,
                      icon: Icon(Icons.add),
                      iconSize: 35,
                      alignment: AlignmentDirectional.centerEnd ,
                    ),
                  ),
                ), 
                );
}
Widget meuBody2(){
  return const Padding(
              padding:EdgeInsets.all(8),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22), 
                    bottomRight: Radius.circular(22),
                  ),
                ),
                leading:Card(
                  color: Colors.white,
                  margin: EdgeInsets.all(0),
                  child:Image(
                        fit:BoxFit.fill ,
                        image: AssetImage('assets/images/conexao.png'), 
                        alignment: Alignment.centerLeft,
                        width: 40.0,
                        height: 40.0,
                      ),
                ),
                title:Text(
                  'Organização da PROEX',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  'Conheça nossos setores',
                   style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ), 
                tileColor: Colors.white , 
                trailing: Card(
                  color: Color.fromRGBO(150, 30, 30, 1), 
                  margin: EdgeInsets.only(left:0 ,right: 10,top: 0,bottom: 0) ,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22), 
                      topRight: Radius.circular(22),
                      bottomLeft: Radius.circular(22),
                      bottomRight: Radius.circular(22),
                    ),
                  ),
                  child:IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      
                      iconSize: 35,
                      alignment: AlignmentDirectional.centerEnd ,
                    ),
                  ),
                ),
              );
}
Widget cartaoimagem(){
  return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(2), 
                topRight: Radius.circular(2),
                bottomLeft: Radius.circular(2),
                bottomRight: Radius.circular(2),
              ),
            ),
            color: Colors.white,
            child:Image(
              image: AssetImage('assets/images/colaboradores.png'),
              width: 30,
              height: 30,
            ),
          );
} 
Widget cartaotexto(){
  return Text(
            'Conheça nossos colaboradores',
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize:12 ,
              color: Colors.black,
            ),
          );
}
Widget teste1(){
  return Directionality(
    textDirection: TextDirection.ltr,
    child: Row(
      mainAxisAlignment:MainAxisAlignment.spaceAround ,
      children: [
        Column(
          children: [
            cartaoimagem(),
            cartaotexto(),
          ],
        ),
        Column(
          children: [
            cartaoimagem(),
            cartaotexto(),
          ],
        ),
         Column(
          children: [
            cartaoimagem(),
            cartaotexto(),
          ],
        ),
      ],
    ),
  );
}