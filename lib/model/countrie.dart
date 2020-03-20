
class Countrie {

  String countryName;
  String cases;
  String deaths;
  String region;
  String totalRecovered;
  String newDeaths;
  String newCases;
  String seriousCritical;
  String activeCases;
  String totalCasesP1mPopulation;

  Countrie({this.countryName, this.cases, this.deaths, this.region, this.totalRecovered, this.newDeaths, this.newCases, this.seriousCritical, this.activeCases, this.totalCasesP1mPopulation});

  factory Countrie.fromJson(Map<String, dynamic> json){
    return Countrie(
        countryName: json["country_name"],
        cases: json["cases"],
        deaths: json["deaths"],
        region: json["region"],
        totalRecovered: json["total_recovered"],
        newCases: json["new_cases"],
        seriousCritical: json["serious_critical"],
        activeCases: json["active_cases"],
        totalCasesP1mPopulation: json["total_cases_per_1m_population"],
    );
  }

}