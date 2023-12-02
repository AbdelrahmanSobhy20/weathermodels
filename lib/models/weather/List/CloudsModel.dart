class CloudsModel{
  late int all ;
  CloudsModel({required this.all});

  CloudsModel.fromJson(Map<String, dynamic> json) {
     this.all= int.parse(json["all"].toString());
  }

  Map<String, dynamic> toJson() {
    return {
      "all": this.all,
    };
  }

//
}