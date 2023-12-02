import 'dart:convert';
import 'package:weather_try/models/weather/WeatherAPIModel.dart';
import 'package:http/http.dart'as http ;

class WeatherAPI{
  Future<WeatherAPIModel?> getApiData() async {
    final http.Response response = await http.get(Uri.parse("https://api.openweathermap.org/data/2.5/forecast?q=cairo&appid=42aacbd350087a49105539256a333f65"));
   if(response.statusCode>=200&&response.statusCode<=299){
     final Map<String , dynamic> jsonbody = jsonDecode(response.body);
     WeatherAPIModel weatherAPIModel = WeatherAPIModel.fromJson(jsonbody);
     //print('status code = ${response.statusCode}');
     //print(weatherAPIModel.list[0].dt);
     return weatherAPIModel ;
   }else{
     print('status code = ${response.statusCode}');
   }
  }
}