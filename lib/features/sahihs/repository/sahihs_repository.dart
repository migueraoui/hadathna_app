import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:hadathna_app/core/utils/strings.dart';
import 'package:hadathna_app/features/sahihs/models/sahih.dart';

class SahihRepository{
  Future<List<SahihModel>> getSahihs()async{
  final  sahihsJson = await rootBundle.loadString(jsonBaseDirectory+'sahihs.json');
  Map<String,dynamic> data = jsonDecode(sahihsJson);
  return List<SahihModel>.from( data['sahihs'].map((e) => SahihModel.fromJson(e)));

  }
}