import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:hadathna_app/features/sahihs/models/hadith.dart';

class HadithsRepo{
  Future<List<Hadith>> getHadithsByBook(String source)async{
    final json =await rootBundle.loadString(source);
    final Map<String,dynamic>  data = jsonDecode(json);

    return List<Hadith>.from(data['hadiths'].map((e) => Hadith.fromJson(e))).getRange(0, 50).toList();
  }
}