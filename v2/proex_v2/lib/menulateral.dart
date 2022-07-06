// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MenuLateral extends StatefulWidget {
  const MenuLateral({Key? key}) : super(key: key);

  @override
  State<MenuLateral> createState() => _MenuLateralState();
}

class _MenuLateralState extends State<MenuLateral> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration:BoxDecoration(color: const Color.fromRGBO(150, 30, 30, 1)),
              child: Image(
                  image: AssetImage('assets/images/logo.jpg'),
                  fit: BoxFit.contain,
                  alignment: Alignment.centerLeft,
                ),
            ),
            ListTile(
              title: Text('Início'),
              leading: Icon(Icons.arrow_forward_ios),
              onTap: (() {
                Navigator.pushNamed(context, 'TelaPrincipal');
              }),
            ),
            ListTile(
              title: Text('Extensão'),
              subtitle: Column(
                children: [
                  ListTile(
                    title: Text('Inicio'),
                    leading: Icon(Icons.ads_click_rounded),
                    onTap: () {
                       Navigator.pushNamed(context, 'TelaExtensao');
                    },
                  ),
                  ListTile(
                    title: Text('Processos e anexos'),
                    leading: Icon(Icons.ads_click_rounded),
                    onTap: () {
                      
                    },
                  ),
                  ListTile(
                    title: Text('Políticas'),
                    leading: Icon(Icons.ads_click_rounded),
                    onTap: () {
                      
                    },
                  ),
                  ListTile(
                    title: Text('Projetos e programas'),
                    leading: Icon(Icons.ads_click_rounded),
                    onTap: () {
                      
                    },
                  ),
                ],
              ),
              leading: Icon(Icons.keyboard_arrow_down_outlined ),
              onTap: (() {
              }),
            ),
            ListTile(
              title: Text('Arte e Cultura'),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start ,
                children:[
                  ListTile(
                    title: Text('Inverno Cultural'),
                    leading: Icon(Icons.ads_click_rounded),
                    onTap: () {
                      
                    },
                  ),
                  ListTile(
                    title: Text('Fortim dos Emboabas'),
                    leading: Icon(Icons.ads_click_rounded),
                    onTap: () {
                      
                    },
                  ),
                  ListTile(
                    title: Text('Centro Cultural'),
                    leading: Icon(Icons.ads_click_rounded),
                    onTap: () {
                      
                    },
                  ),
                ],
              ),
              leading: Icon(Icons.arrow_forward_ios),
              onTap: (() {
              }),
            ),
            
          ],
        ),
      );
  }
}



