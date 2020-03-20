import 'package:covidocurrencys/telas/informacoes.dart';
import 'package:covidocurrencys/telas/ocorrencias.dart';
import 'package:covidocurrencys/telas/prevencao.dart';
import 'package:covidocurrencys/telas/telefones.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indice = 0;

  List<Widget> telas = [
    Prevencoes(),
    Informacoes(),
    Telefones(),
    Ocorrencias()
  ];

  _onItemTapped(int index) {
    setState(() {
      _indice = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("COVID-19 BR Informações"),
      ),
      body: telas[_indice],
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.amber,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.green,
                icon: Icon(Icons.home),
                title: Text("Início"),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.green,
                icon: Icon(Icons.info),
                title: Text("Ingormações"),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.green,
                icon: Icon(Icons.phone_in_talk),
                title: Text("Telefones úteis"),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.green,
                icon: Icon(Icons.whatshot),
                title: Text("Ocorrências"),
              ),
            ],
          currentIndex: _indice,
          onTap: _onItemTapped,
        ),
    );
  }
}
