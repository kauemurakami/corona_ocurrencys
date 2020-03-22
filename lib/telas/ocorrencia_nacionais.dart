import 'package:covidocurrencys/api_br.dart';
import 'package:covidocurrencys/model/estadosbr.dart';
import 'package:flutter/material.dart';

class OcorrenciasNacionais extends StatefulWidget {
  @override
  _OcorrenciasNacionaisState createState() => _OcorrenciasNacionaisState();
}

class _OcorrenciasNacionaisState extends State<OcorrenciasNacionais> {

  _buscarDadosBR(){
    ApiBR api = ApiBR();
    print(api.buscarBR());
    return api.buscarBR();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<EstadosBR>>(
      future: _buscarDadosBR(),
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
                    List<EstadosBR> estados = snapshot.data;
                    EstadosBR estado = estados[index];
                    return Column(
                      children: <Widget>[
                        Container(
                            child : Padding(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    estado.state + " - " +
                                    estado.uf,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text("Casos ativos: "+estado.cases.toString()),
                                  Text("Mortes: "+estado.deaths.toString()),
                                  Text("Casos Negativos: "+estado.refuses.toString()),
                                  Text("Casos Suspeitos: "+estado.suspects.toString()),
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
