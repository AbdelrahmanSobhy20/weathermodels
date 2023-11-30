import 'package:weather_try/models/weather/city/CoordModel.dart';

class CityModel {

  late int id;
  late String name;
  late CoordModel coord;
  late String country;
  late int population;
  late int timezone;
  late int sunrise;
  late int sunset;


  CityModel({
    required this.id,
    required this.name,
    required this.coord,
    required this.country,
    required this.population,
    required this.timezone,
    required this.sunrise,
    required this.sunset});

   CityModel.fromJson(Map<String, dynamic> json) {
    id=json["id"];
    name=json["name"];
    coord=CoordModel.fromJson(json["coord"]);
    country=json["country"];
    population=json["population"];
    timezone=json["timezone"];
    sunrise=json["sunrise"];
    sunset=json["sunset"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {
    "id": this.id,
    "name": this.name,
    "coord": this.coord.toJson(),
    "country": this.country,
    "population": this.population,
    "timezone": this.timezone,
    "sunrise": this.sunrise,
    "sunset": this.sunset,
  };
    return json ;
  }

//
}