// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

import 'package:share/share.dart';

class TelaExtensao extends StatefulWidget {
  const TelaExtensao({Key? key}) : super(key: key);

  @override
  State<TelaExtensao> createState() => _TelaExtensaoState();
}

class _TelaExtensaoState extends State<TelaExtensao> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
            contrutordePagina('Processos e anexos'),
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
    return Column(
      children: [
        cartaoTelaExtensaoInicio(
          titulo:'A EXTENSÃO ',
          subtitulo: 'A Extensão Universitária,sob o principio da ...',
          imagem: 'assets/images/mundinho.png' ,
          corPrimaria: const Color.fromRGBO(150, 30, 30, 1) ,
          corSecundaria: Colors.white,
          corFonte: Colors.white,
        ),
        cartaoTelaExtensaoInicio(
          titulo:'AÇÕES DA EXTENSÃO:',
          subtitulo: 'De acordo com a Política de Extensao da UFSJ,a extensão...',
          imagem: 'assets/images/mundinho.png' ,
          corPrimaria: Colors.white,
          corSecundaria: Color.fromRGBO(150, 30, 30, 1),
          corFonte: Colors.black,
        ),
        cartaoTelaExtensaoInicio(
          titulo:'BOLSA DE EXTENSÃO ',
          subtitulo: 'A bolsa de extensão proporciona ao aluno a convivênca ...',
          imagem: 'assets/images/mundinho.png' ,
          corPrimaria: const Color.fromRGBO(150, 30, 30, 1) ,
          corSecundaria: Colors.white,
          corFonte: Colors.white,
        ),
        cartaoTelaExtensaoInicio(
          titulo:'COMISSÃO DE EXTENSÃO:',
          subtitulo: 'A comissãao de Extensao da Universidade Federal de São João ...',
          imagem: 'assets/images/mundinho.png' ,
          corPrimaria: Colors.white,
          corSecundaria: Color.fromRGBO(150, 30, 30, 1),
          corFonte: Colors.black,
        ),
      ],
    );
  }
}
Padding cartaoTelaExtensaoInicio({String? titulo ,String? subtitulo ,String? imagem, Color? corPrimaria,Color? corSecundaria,Color? corFonte }){
  return  Padding(
              padding:EdgeInsets.all(15) ,
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22), 
                    bottomRight: Radius.circular(22),
                  ),
                ),
                leading:Card(
                  color: corSecundaria,
                  margin: EdgeInsets.all(0),
                  child:Image(
                          fit:BoxFit.contain ,
                          image: AssetImage(imagem!), 
                          alignment: Alignment.bottomCenter,
                          width: 40.0,
                          height: 40.0,
                        ),
                ),
                title:Text(
                  titulo!,
                  style: TextStyle(
                    fontSize: 17,
                    color: corFonte,
                  ),
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  subtitulo!,
                  style: TextStyle(
                  fontSize: 12,
                  color: corFonte,                  
                ),
                textAlign: TextAlign.center,
                ), 
                tileColor: corPrimaria , 
                trailing: Card(
                  color: corSecundaria, 
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
                      iconSize: 25,
                      alignment: AlignmentDirectional.center ,
                    ),
                  ),
                ), 
              );
}