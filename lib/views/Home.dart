import 'package:flutter/material.dart';
import 'package:weather_try/apis/WeatherAPI.dart';
import 'package:weather_try/models/weather/WeatherAPIModel.dart';

class Home extends StatelessWidget {
   Home({super.key});
  //WeatherAPI api = WeatherAPI();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: FutureBuilder<WeatherAPIModel?>(
        //Creat object
        future:WeatherAPI().getApiData(),
        //apigetApiData() ,
      builder:(context,  AsyncSnapshot snapshot) {

        if(snapshot.hasData){
         print(snapshot.data.toMap.toString());
        }

        if(snapshot.hasError){
          return Center(child: Text("${snapshot.error}"));
        }
        return Center(child: CircularProgressIndicator(),);
      }, ),
    );
  }
}
