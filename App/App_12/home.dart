import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Anúncios"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      backgroundColor: Colors.white,
      body: _corpo(),
    );
  }

  _corpo(){
    return Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget> [
            _carrosel(),
          ],
        )
    );
  }

  _carrosel() {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      height: 300,
      child: PageView(
        children: <Widget>[
          _anuncio('rock1.jpg', 'Rock 1'),
          _anuncio('rock2.jpg', 'Rock 2'),
          _anuncio('rock3.jpg', 'Rock 3'),
          _anuncio('rock4.jpg', 'Rock 4'),
          _anuncio('rock5.jpg', 'Rock 5'),
        ],
      ),
    );
  }

  _anuncio(String nomeFoto, String description){
    return SingleChildScrollView(
      child: Container(
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _foto(nomeFoto),
            _texto(description)
          ],
        ),
      ),
    );
  }

  _texto(String description) {
    return Text(
      description,
      style: TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: Colors.red,
          decorationStyle: TextDecorationStyle.wavy),
    );
  }

  _foto(String nomeFoto) {
    return Image.asset(
      "assets/images/${nomeFoto}",
      height: 150,
      width: 150,
      fit: BoxFit.cover,
    );
  }
}