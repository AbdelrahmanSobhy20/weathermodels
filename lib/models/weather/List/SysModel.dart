class SysModel{
  late String pod;
  SysModel({required this.pod});

  SysModel.fromJson(Map<String, dynamic> json) {
      this.pod= json["pod"];

  }
  Map<String, dynamic> toJson() {
    return {
      "pod": this.pod,
    };
  }
//
}