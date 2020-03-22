class EstadosBR{

  int uid;
  String uf;
  String state;
  int cases;
  int deaths;
  int suspects;
  int refuses;
  bool broadcast;
  String comments;
  String datetime;

  EstadosBR({this.uid, this.uf, this.state, this.cases, this.deaths, this.suspects, this.refuses, this.broadcast, this.comments,this.datetime});

  factory EstadosBR.fromJson(Map<String, dynamic> json){
    return EstadosBR(
      uid: json["uid"],
      uf: json["uf"],
      state: json["state"],
      cases: json["cases"],
      deaths: json["deaths"],
      suspects: json["suspects"],
      refuses: json["refuses"],
      broadcast: json["broadcast"],
      comments: json["comments"],
      datetime: json["datetime"],
    );
  }
}