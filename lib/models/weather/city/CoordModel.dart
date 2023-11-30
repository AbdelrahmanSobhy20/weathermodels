class CoordModel {
  late double lat ;
  late double lon;

  CoordModel({required this.lat,required  this.lon});

  CoordModel.fromJson(Map<String, dynamic> json) {
    this.lat=json["lat"];
    this.lon=json["lon"];

  }
  Map<String, dynamic> toJson() {
    return {
      "lat": this.lat,
      "lon": this.lon,
    };
  }

//
}