class WeatherModel{
  late int id;
   late String main ;
  late String description;
   late String icon;

  WeatherModel({
    required this.id,
    required this.main,
    required this.description,
    required this.icon});

   WeatherModel.fromJson(Map<String, dynamic> json) {
     this.id= int.parse(json["id"].toString());
     this.main= json["main"];
     this.description= json["description"];
     this.icon=json["icon"];

  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic>json={
      "id": this.id,
      "main": this.main,
      "description": this.description,
      "icon": this.icon,
    };
    return json;

  }

//
}
