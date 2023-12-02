
import 'package:weather_try/models/weather/List/ListModel.dart';
import 'city/CityModel.dart';

class WeatherAPIModel{
  late String cod;
  late int message ;
  late int cnt ;
  late List<ListModel> list ;
  late CityModel city ;

      WeatherAPIModel({ required this.cod,required this.message, required this.cnt,required this.list, required this.city});
 //json is a name :
      WeatherAPIModel.fromJson(Map<String, dynamic> json) {
      this.cod= json["cod"];
      this.message= int.parse(json["message"].toString());
      this.cnt= int.parse(json["cnt"].toString());
      this.list=[];
         // ListModel.fromJson(json["list"]);
      (json["list"]).forEach((element) {
       this.list.add(ListModel.fromJson(element));
      });
      this.city= CityModel.fromJson(json["city"]);
      }
     Map<String, dynamic> toJson() {
     List<Map> tmpList=[];
     this.list.forEach((element) {
       tmpList.add(element.toJson());
     });
    Map<String,dynamic> json = {
      "cod": this.cod,
      "message": this.message,
      "cnt": this.cnt,
      "list":tmpList,
      "city": this.city.toJson,
    };
    return json ;
  }
//
}
