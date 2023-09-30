import 'dart:convert';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) => json.encode(data.toJson());

class DataModel {
  DataModel({required this.image});
  String image;
  factory DataModel.fromJson(Map<String, dynamic> json) =>
      DataModel(image: json['url']);
  Map<String, dynamic> toJson() => {'image': image};
}
