import 'dart:io';

import 'package:covidocurrencys/model/countrie.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const API_KEY = "14f940bc83msh44947e1a89e46cfp1b34aajsne9f21d23377c";
const URL_BASE = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/cases_by_country.php";

class Api{

  Api();

  Future<List<Countrie>> buscar() async{
    Map<String, String> headers = {"x-rapidapi-host": "coronavirus-monitor.p.rapidapi.com",
      "x-rapidapi-key": "14f940bc83msh44947e1a89e46cfp1b34aajsne9f21d23377c"};
    http.Response response = await http.get(URL_BASE ,
        headers: headers);
    print(response.statusCode);

    if(response.statusCode == 200){

      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<Countrie> countries = dadosJson["countries_stat"].map<Countrie>(
        (map){

          return Countrie.fromJson(map);
        }
      ).toList();
      return countries;
    }else print("Sem retorno");

  }

}