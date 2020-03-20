import 'package:covidocurrencys/api.dart';
import 'package:covidocurrencys/model/countrie.dart';
import 'package:flutter/material.dart';

class Ocorrencias extends StatefulWidget {


  @override
  _OcorrenciasState createState() => _OcorrenciasState();
}

class _OcorrenciasState extends State<Ocorrencias> {
  _buscarDados(){
    Api api = Api();
    return api.buscar();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Countrie>>(
      future: _buscarDados(),
      builder: (context, snapshot){
        switch (snapshot.connectionState){
          case ConnectionState.none:
          case ConnectionState.active:
          case ConnectionState.waiting:
            return Center(
              child: CircularProgressIndicator(),
            );
            break;
          case ConnectionState.done:
            if(snapshot.hasData){
              return ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                  itemCount: snapshot.data.length,
                itemBuilder: (context, index){
                    List<Countrie> countries = snapshot.data;
                    Countrie countrie = countries[index];
                    return Column(
                      children: <Widget>[
                        Container(
                          child : Padding(
                              padding: EdgeInsets.all(16),
                            child: Column(
                              children: <Widget>[
                                Text("País: "+countrie.countryName),
                                Text("Casos ativos: "+countrie.activeCases),
                                Text("Mortes: "+countrie.deaths),
                                Text("Recuperados: "+countrie.totalRecovered),
                                Text("Casos graves: "+countrie.seriousCritical),
                                Text("Casos por 1m de pessoas: "+countrie.totalCasesP1mPopulation),
                              ],
                            ),
                          )
                        ),
                      ],
                    );
                }
              );
            }

        }
        return Container();
      },
    );
  }
}
