import 'package:flutter/material.dart';

class Prevencoes extends StatefulWidget {
  @override
  _PrevencoesState createState() => _PrevencoesState();
}

class _PrevencoesState extends State<Prevencoes> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top :16),
            child: Center( child: Image.asset("images/img1-maos.png")),
          ),
          Center( child: Text(
            "Lave as mãos ou use álcool em gel.",
            style: TextStyle(
              fontSize: 20,
            ),
          )),
          Container(
            padding: EdgeInsets.only(top :16),
            child: Center( child: Image.asset("images/img2-tosse.png")),
          ),
          Center( child: Text(
            "Cubra o nariz e boca ao espirrar ou tossir.",
            style: TextStyle(
                fontSize: 20
            ),
          )),
          Container(
            padding: EdgeInsets.only(top :16),
            child: Center( child: Image.asset("images/img3-pessoas.png")),
          ),
          Center( child: Text(
            "Evite aglomerações se estiver doente.",
            style: TextStyle(
                fontSize: 20
            ),
          )),
          Container(
            padding: EdgeInsets.only(top :16),
            child: Center( child: Image.asset("images/img4-janela.png")),
          ),
          Center( child: Text(
            "Mantenha os ambientes bem ventilados.",
            style: TextStyle(
                fontSize: 20
            ),
          )),
          Container(
            padding: EdgeInsets.only(top :16),
            child: Center( child: Image.asset("images/img5-objetos.png")),
          ),
          Center( child: Text(
            "Não compartilhe objetos pessoais.",
            style: TextStyle(
                fontSize: 20
            ),
          )),
        ],
      ),
    );
  }
}
