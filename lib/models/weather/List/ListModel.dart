import 'package:weather_try/models/weather/List/CloudsModel.dart';
import 'package:weather_try/models/weather/List/MainModel.dart';
import 'package:weather_try/models/weather/List/SysModel.dart';
import 'package:weather_try/models/weather/List/WeatherModel.dart';
import 'WindsModel.dart';

class ListModel{
  late int dt ;
  late MainModel main;
  late List<WeatherModel> weather;
  late CloudsModel clouds ;
  late WindModel wind;
  late int visibility;
  late double pop;
  late SysModel sys;
  late String dt_txt;

  ListModel({required this.dt,
     required this.main,
     required this.weather,
     required this.clouds,
     required this.wind,
     required this.visibility,
     required this.pop,
     required this.sys,
     required this.dt_txt});

  ListModel.fromJson(Map<String, dynamic> json) {
      this.dt      =int.parse(json["dt"].toString());
      //print(".......1....");
      this.main    =MainModel.fromJson(json["main"]);
     // print(".......2....");
      this.weather=[];
      (json["weather"] as List).forEach((element) {
        this.weather.add(WeatherModel.fromJson(element));
      });
     // print(".......3....");
      this.clouds  =CloudsModel.fromJson(json["clouds"]);
      //print(".......4....");
      this.wind=WindModel.fromJson(json["wind"]);
      //print(".......5....");
      this.visibility= int.parse(json["visibility"].toString());
      //print(".......6....");
      this.pop     =double.parse(json["pop"].toString()) ;
      //print(".......7....");
      this.sys     =SysModel.fromJson(json["sys"]);
      //print(".......8....");
      this.dt_txt  =json["dt_txt"];
      //print(".......9....");
  }

  Map<String, dynamic> toJson() {
    List<Map<String,dynamic>> list2=[];
    this.weather.forEach((element) {
      list2.add(element.toJson());
    });
    Map<String, dynamic> json = {
      "dt": this.dt,
      "main": this.main.toJson(),
      "weather":list2,
      "clouds": this.clouds.toJson(),
      "visibility": this.visibility,
      "pop": this.pop,
      "sys": this.sys.toJson(),
      "dt_txt": this.dt_txt,
    };
    return json;
  }
//
}