class MainModel{

 late double temp      ;
 late double feels_like;
 late double temp_min  ;
 late double temp_max  ;
 late int pressure  ;
 late int sea_level ;
 late int grnd_level;
 late int humidity  ;
 late double temp_kf   ;

 MainModel({
     required this.temp,
     required this.feels_like,
     required this.temp_min,
     required this.temp_max,
     required this.pressure,
     required this.sea_level,
     required this.grnd_level,
     required this.humidity,
     required this.temp_kf});

  MainModel.fromJson(Map<String, dynamic> json) {

      this.temp       = double.parse(json["temp"].toString()) ;

      this.feels_like = double.parse(json["feels_like"].toString());

      this.temp_min   = double.parse(json["temp_min"].toString()) ;

      this.temp_max   = double.parse(json["temp_max"].toString()) ;

      this.pressure   =int.parse(json["pressure"].toString());

      this.sea_level  =int.parse(json["sea_level"].toString());

      this.grnd_level =int.parse(json["grnd_level"].toString());

      this.humidity   =int.parse(json["humidity"].toString());

      this.temp_kf    = double.parse(json["temp_kf"].toString()) ;



  }

 Map<String, dynamic> toJson() {
   Map<String, dynamic> json={
      "temp": this.temp,
      "feels_like": this.feels_like,
      "temp_min": this.temp_min,
      "temp_max": this.temp_max,
      "pressure": this.pressure,
      "sea_level": this.sea_level,
      "grnd_level": this.grnd_level,
      "humidity": this.humidity,
      "temp_kf": this.temp_kf};
       return json;

  }

//
}