class WindModel{
  late double speed;
  late int deg;
  late double gust;

  WindModel({ required this.speed, required this.deg, required this.gust});

   WindModel.fromJson(Map<String, dynamic> json) {
     this.speed = double.parse(json["speed"].toString());
     this.deg =   int.parse(json["deg"].toString());
     this.gust =  double.parse(json["gust"].toString());

  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json ={
      "speed": this.speed,
      "deg": this.deg,
      "gust": this.gust,};
        return json;
  }

//
}