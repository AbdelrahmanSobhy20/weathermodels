import 'package:flutter/material.dart';
import 'package:weather_try/apis/WeatherAPI.dart';
import 'package:weather_try/models/weather/WeatherAPIModel.dart';

class Home extends StatefulWidget {
   Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //WeatherAPI get = WeatherAPI();
  @override
  //void initstate() {
   // get.getApiData();
   // super.initState();


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
         print(snapshot.data);
        }
        if(snapshot.hasError){
          return Center(child: Text("${snapshot.error}"));
        }
        return (Container())
          //Center(child: CircularProgressIndicator(),)
        ;
      }, ),
    );
  }
}
/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:weather_screen/Data/Models/response.dart';

//import 'package:weather_screen/Data/api/apirepo.dart';

import '../models/weather/city/CityModel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  WeatherAPI get = WeatherAPI();
  late String city = 'cairo';

  @override
  void initstate() {
    get.getApiData(city);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WeatherAPIModel object;

    return Scaffold(
      body: FutureBuilder<WeatherAPIModel?>(
        future: WeatherAPI(). getApiData(city),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            print(snapshot.data!.toString());
            object = snapshot.data!;
            return Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff437dc4),
                    Color(0xff36479a),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(),
                  Text(
                    object.city.name,
                    style: const TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  Image.network(
                      'https://openweathermap.org/img/wn/${object.list.first.weather.first.icon}@2x.png'),
                  Text(
                    object.list.elementAt(0).main.temp.toString(),
                    style: const TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(''),
                            Image.network(
                                'https://openweathermap.org/img/wn/${object.list.elementAt(0).weather.first.icon}@2x.png'),
                            Text(
                              object.list.elementAt(0).main.temp.toString(),
                              style: const TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(''),
                            Image.network(
                                'https://openweathermap.org/img/wn/${object.list.elementAt(8).weather.first.icon}@2x.png'),
                            Text(
                              object.list.elementAt(8).main.temp.toString(),
                              style: const TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(''),
                            Image.network(
                                'https://openweathermap.org/img/wn/${object.list.elementAt(16).weather.first.icon}@2x.png'),
                            Text(
                              object.list.elementAt(16).main.temp.toString(),
                              style: const TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(''),
                            Image.network(
                                'https://openweathermap.org/img/wn/${object.list.elementAt(24).weather.first.icon}@2x.png'),
                            Text(
                              object.list.elementAt(24).main.temp.toString(),
                              style: const TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(''),
                            Image.network(
                              'https://openweathermap.org/img/wn/${object.list.elementAt(32).weather.first.icon}@2x.png',
                            ),
                            Text(
                              object.list.elementAt(32).main.temp.toString(),
                              style: const TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
          if (snapshot.hasError) {
            print(snapshot.error.toString());
          }
          return Center(
            child: Container(
              height: 100,
              width: 100,
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
//
// class Day extends StatefulWidget {
//   const Day({Key? key,required this.objectt}) : super(key: key);
//  final WeatherResponse objectt;
//   @override
//   State<Day> createState() => _DayState();
// }
//
// class _DayState extends State<Day> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(''),
//         Image.network('https://openweathermap.org/img/wn/${objectt.list.first.weather.first.icon}@2x.png');
//         Text(''),
//       ],
//     );*/
//   }
// }
