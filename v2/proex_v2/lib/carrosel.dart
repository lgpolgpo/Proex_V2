// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

List<Widget> listadeImagensCarrosel = [
    Image.asset('assets/images/tela1.png'),
    Image.asset('assets/images/logo.jpg'),
    Image.asset('assets/images/mundinho.png'),
    Image.asset('assets/images/conexao.png'),
    
  ];

class CarouselDemo extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();
   //int _currentIndex = 0;
   final ButtonStyle estilo =
    ElevatedButton.styleFrom(
      primary:  const Color.fromRGBO(150, 30, 30, 1),
      onPrimary: Colors.white,
    );

  CarouselDemo({Key? key}) : super(key: key);
 @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      CarouselSlider(
        items: listadeImagensCarrosel,
        carouselController: buttonCarouselController,
        options: CarouselOptions(
          autoPlay: false,
          enlargeCenterPage: true,
          viewportFraction: 0.9,
          aspectRatio: 2.0,
          initialPage: 0,
        ),
      ),
      
      ElevatedButton(
        onPressed: () => buttonCarouselController.nextPage(
            duration: const Duration(milliseconds: 300), 
            curve: Curves.linear
          ),
        style: estilo,
        child: const Text(
          ' →    ',
          textAlign: TextAlign.center ,
          style:TextStyle(fontSize: 30),
        ),
      ),
    ],
  );
}