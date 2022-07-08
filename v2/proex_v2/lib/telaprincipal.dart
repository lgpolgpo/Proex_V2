

// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'carrosel.dart';
import 'menulateral.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: minhaAppBar(tituloAppBar: 'PRÓ-REITORIA DE EXTENSÃO UFSJ'),
      drawer: MenuLateral(),
      body:Container(
        padding: const EdgeInsets.all(5) ,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CarouselDemo(),
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
              SizedBox(width: double.infinity,height: 30,),
              Text(
                'Links Úteis:',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,//cor fonte primaria 
                  ),
                  textAlign: TextAlign.start,
              ),
              SizedBox(width: double.infinity,height: 30,),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                ],
              ),
            ],
          ),
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

 
Widget meuPaddingPadrao(context,{String? icone,Color? corPrimaria,Color? corSecundaria,Color? corFontePrimaria,Color? corFonteSecundaria,String? titulo,String? subTitulo,double? tamanhoFontePrimaria,double? tamanhoFonteSecundaria}){
  return Padding(
              padding: EdgeInsets.all(8),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22), 
                    bottomRight: Radius.circular(22),
                  ),
                ),
                isThreeLine: true,
                leading:Card(
                  color: Colors.white,//cor secundaria
                  margin: EdgeInsets.all(0),
                  child:Image(
                        fit:BoxFit.contain ,
                        image: AssetImage(icone!), //icone
                        alignment: Alignment.center,
                        width:50,
                        height: 80.0,
                      ),
                ),
                title:Text(
                  titulo!,
                  style: TextStyle(
                    fontSize: tamanhoFontePrimaria,
                    color: corFontePrimaria,//cor fonte primaria 
                  ),
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  subTitulo!,
                   style: TextStyle(
                    fontSize: tamanhoFonteSecundaria,
                    color: corFonteSecundaria,//cor fonte secundaria
                  ),
                textAlign: TextAlign.center,
                ), 
                tileColor: corPrimaria, //cor primaria
                trailing: Card(
                  color: corSecundaria, //cor secundaria
                  margin: EdgeInsets.zero ,
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
                      icon:Icon(
                        Icons.add,
                        color: corPrimaria,
                      ),
                      iconSize: 35,
                      alignment: AlignmentDirectional.centerEnd ,
                    ),
                  ),
                ), 
      );
}


Container cardizinho(context,{Color? corPrimaria,Color? corFonte,String? texto,String? icone,double? tamanhoFonte}){
  return Container(
          width: MediaQuery.of(context).size.width*0.30,
          height: MediaQuery.of(context).size.height*0.20,
          decoration: BoxDecoration(
            color:corPrimaria,//cor primaria
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius:MediaQuery.of(context).size.width*0.10 ,
                backgroundColor: Colors.white,//cor secundaria
                child: Image.asset(
                  icone!,//icone
                  width: MediaQuery.of(context).size.width*0.25,
                  height: MediaQuery.of(context).size.height*0.25,
                ),
              ),
              Text(
                texto!,//texto
                textAlign: TextAlign.center,
                style:TextStyle(
                  color: corFonte,//cor secundaria
                  fontSize: tamanhoFonte,
                ),
              ),
            ],
          ),
        );
}