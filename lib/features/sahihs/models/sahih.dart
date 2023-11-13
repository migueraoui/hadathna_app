import 'package:hadathna_app/core/utils/strings.dart';

class SahihModel{
  final String name ; 
  final int hadithsNumber;
  final String cover;
  final String source;

  factory SahihModel.fromJson(Map<String,dynamic> json){
    return SahihModel(name:json['ar_name'],hadithsNumber: json['hadith_number'],cover: imagesBaseDirectory+ json['cover'],source: jsonBaseDirectory+ json['normal-source'] );
  }

  SahihModel({required this.name, required this.hadithsNumber, required this.cover, required this.source});
}