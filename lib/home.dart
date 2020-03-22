import 'package:covidocurrencys/model/estadosbr.dart';
import 'package:covidocurrencys/telas/informacoes.dart';
import 'package:covidocurrencys/telas/ocorrencia_nacionais.dart';
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
    OcorrenciasNacionais(),
    Prevencoes(),
    Informacoes(),
    Telefones(),
    Ocorrencias(),
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
                icon: Icon(Icons.assessment),
                title: Text("Brasil"),
            ),
              BottomNavigationBarItem(
                backgroundColor: Colors.green,
                icon: Icon(Icons.pan_tool),
                title: Text("Prevenção"),
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
                icon: Icon(Icons.nature_people),
                title: Text("Mundo"),
              ),
            ],
          currentIndex: _indice,
          onTap: _onItemTapped,
        ),
    );
  }
}
