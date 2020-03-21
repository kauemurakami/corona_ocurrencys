import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Informacoes extends StatefulWidget {
  @override
  _InformacoesState createState() => _InformacoesState();
}

class _InformacoesState extends State<Informacoes> {
  static const url = "https://portalarquivos2.saude.gov.br/images/pdf/2020/fevereiro/13/plano-contingencia-coronavirus-COVID19.pdf";

  _openSite(String url) async {
    if(await canLaunch(url)){
      await launch(url, forceSafariVC: false, forceWebView: false);
    }else throw 'Navegador não encontarado';
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Text(
              "O que é o Coronavírus?",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.amber
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child : Text("Coronavírus (CID10) é uma família de vírus que causam infecções respiratórias. O novo agente do coronavírus foi descoberto em 31/12/19 após casos registrados na China. Provoca a doença chamada de coronavírus (COVID-19). Os primeiros coronavírus humanos foram isolados pela primeira vez em 1937. No entanto, foi em 1965 que o vírus foi descrito como coronavírus, em decorrência do perfil na microscopia, parecendo uma coroa.A maioria das pessoas se infecta com os coronavírus comuns ao longo da vida, sendo as crianças pequenas mais propensas a se infectarem com o tipo mais comum do vírus. Os coronavírus mais comuns que infectam humanos são o alpha coronavírus 229E e NL63 e beta coronavírus OC43, HKU1."),
          ),
          Text(
            "Período de incubação",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.amber
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child : Text("Período de incubação é o tempo que leva para os primeiros sintomas aparecerem desde a infecção por coronavírus, que pode ser de 2 a 14 dias. "),
          ),

          Text(
            "Período de transmissibilidade do coronavírus",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.amber
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child : Text("De uma forma geral, a transmissão viral ocorre apenas enquanto persistirem os sintomas É possível a transmissão viral após a resolução dos sintomas, mas a duração do período de transmissibilidade é desconhecido para o coronavírus. Durante o período de incubação e casos assintomáticos não são contagiosos."),
          ),

          Text(
            "Fonte de infecção do coronavírus",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.amber
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child : Text("A maioria dos coronavírus geralmente infectam apenas uma espécie animal ou pelo menos um pequeno número de espécies proximamente relacionadas. Porém, alguns coronavírus, como o SARS-CoV, podem infectar pessoas e animais. O reservatório animal para o coronavírus (COVID-19) ainda é desconhecido. "),
          ),

          Text(
            "Quais são os sintomas do coronavírus?",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.amber
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child : Column(
              children: <Widget>[
                Text("Os principais são sintomas conhecidos até o momento são: \n"),
                Text("Febre\n", style: TextStyle( fontWeight: FontWeight.bold)),
                Text("Tosse\n", style: TextStyle( fontWeight: FontWeight.bold)),
                Text("Dificuldade de respirar", style: TextStyle( fontWeight: FontWeight.bold)),

              ],
            ),
          ),
          Text(
            "Como o corona vírus é transmitido",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.amber
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child : Column(
              children: <Widget>[
                Text("As investigações sobre as formas de transmissão do coronavírus ainda estão em andamento, mas a disseminação de pessoa para pessoa, ou seja, a contaminação por gotículas respiratórias ou contato, está ocorrendo. \n"),
                Text("Gotículas de saliva\n", style: TextStyle( fontWeight: FontWeight.bold)),
                Text("Espirro\n", style: TextStyle( fontWeight: FontWeight.bold)),
                Text("Tosse\n", style: TextStyle( fontWeight: FontWeight.bold)),
                Text("Catarro\n", style: TextStyle( fontWeight: FontWeight.bold)),
                Text("  Contato pessoal, apertos de mão ou toques\n", style: TextStyle( fontWeight: FontWeight.bold)),
                Text("        Contato com objetos ou superfícies contaminadas,      seguido de contato com a boca, nariz ou olhos\n", style: TextStyle( fontWeight: FontWeight.bold)),
              ],
            ),
          ),

          Text(
            "Como é feito o tratamento",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.amber
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child : Column(
              children: <Widget>[
                Text("Uso de medicamento para dor e febre (antitérmicos e analgésicos).\n", style: TextStyle( fontWeight: FontWeight.bold)),
                Text("Uso de umidificador no quarto ou tomar banho quente para auxiliar no alívio da dor de garanta e tosse.\n", style: TextStyle( fontWeight: FontWeight.bold)),
                Center(
                  child: GestureDetector(
                    child: Text(
                      "PLANO DE CONTIGÊNCIA NACIONAL \n https://portalarquivos2.saude.gov.br/images/pdf/2020/fevereiro/13/plano-contingencia-coronavirus-COVID19.pdf",
                      style: TextStyle(
                          color: Colors.blue,
                        fontSize: 15,
                      ),
                    ),
                    //onTap: _openSite(url),
                  ),
                ),
              ],
            ),
          ),
        ],
      )

    );
  }
}
