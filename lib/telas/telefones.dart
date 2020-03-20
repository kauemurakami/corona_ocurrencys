import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Telefones extends StatefulWidget {
  @override
  _TelefonesState createState() => _TelefonesState();
}

class _TelefonesState extends State<Telefones> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
              children: <Widget>[
              Text("EVITE INFORMAÇÕES FALSAS \n LIGUE 136 MINISTÉRIO DA SAÚDE.\n"
              ,style: TextStyle(fontSize: 15),),
                          Text(
                          "136",
                          style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),
                  ),
              ],
              )
            )
        )
      ],
    );
  }
}
