import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class Telefones extends StatefulWidget {
  @override
  _TelefonesState createState() => _TelefonesState();
}

class _TelefonesState extends State<Telefones> {

  _ligar() async {
    const url = "tel:136";
    if(await canLaunch(url)){
      await launch(url);
    } else {
      throw 'Aplicativo não encontrado';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                     FloatingActionButton(
                        onPressed: _ligar,
                        splashColor: Colors.amber,
                        backgroundColor: Colors.green,
                        child: Icon(Icons.phone_in_talk,
                            color: Colors.white
                        ),
                    ),
                  ],
                ),
              ],
              )
            )
        )
      ],
    );
  }
}
