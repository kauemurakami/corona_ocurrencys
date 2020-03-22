import 'dart:io';

import 'package:covidocurrencys/model/countrie.dart';
import 'package:covidocurrencys/model/estadosbr.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

//const API_KEY = "14f940bc83msh44947e1a89e46cfp1b34aajsne9f21d23377c";
const URL_BASE = "https://covid19-brazil-api.now.sh/api/report/v1";

class ApiBR{

  ApiBR();

  Future<List<EstadosBR>> buscarBR() async{
    http.Response response = await http.get(URL_BASE);
    print(response.statusCode);

    if(response.statusCode == 200){

      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<EstadosBR> estadosbr = dadosJson["data"].map<EstadosBR>(
              (map){
            return EstadosBR.fromJson(map);
          }
      ).toList();
      return estadosbr;
    }else print("Sem retorno");

  }

}