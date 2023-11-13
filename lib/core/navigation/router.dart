import 'package:flutter/material.dart';
import 'package:hadathna_app/core/navigation/routes.dart';
import 'package:hadathna_app/features/sahihs/models/hadith.dart';
import 'package:hadathna_app/features/sahihs/models/sahih.dart';
import 'package:hadathna_app/features/sahihs/ui/pages/hadith.dart';
import 'package:hadathna_app/features/sahihs/ui/pages/home.dart';
import 'package:hadathna_app/features/sahihs/ui/pages/sahih.dart';

class AppRouter{
  static Route<dynamic>? onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case AppRoutes.home:
        return MaterialPageRoute(builder: (context) => HomeScreen(),);

    case AppRoutes.sahihPage :
      SahihModel sahihModel = settings.arguments as SahihModel;
      return MaterialPageRoute(builder: (context) => SahihScreen(sahihModel: sahihModel,));
    case AppRoutes.hadithPage:
          Hadith hadith = settings.arguments as Hadith;
    return MaterialPageRoute(builder: (context) => HadithScreen(hadith: hadith),);
    }
    

    return null;
  } 
    
}