import 'package:covidocurrencys/api_br.dart';
import 'package:covidocurrencys/model/estadosbr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class OcorrenciasNacionais extends StatefulWidget {
  @override
  _OcorrenciasNacionaisState createState() => _OcorrenciasNacionaisState();
}

class _OcorrenciasNacionaisState extends State<OcorrenciasNacionais> {

  int touchIndex;
  _buscarDadosBR(){
    ApiBR api = ApiBR();
    print(api.buscarBR());
    return api.buscarBR();
  }

  List<PieChartSectionData> _showingSections(){
    return List.generate(4, (i) {
      final isTouched = i == touchIndex;
      final double fontSize = isTouched ? 25 : 16;
      final double radius = isTouched ? 60 : 50;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xff13d38e),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        default:
          return null;
      }
    });
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        estado.state + " - " +
                                            estado.uf,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text("Casos ativos: "+estado.cases.toString()),
                                      Text("Baixas: "+estado.deaths.toString()),
                                      Text("Casos Negativos: "+estado.refuses.toString()),
                                      Text("Casos Suspeitos: "+estado.suspects.toString()),
                                    ],
                                  ),
                                  //nova coluna grafico
                                ],
                              ),
                            ) ,
                        )
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
