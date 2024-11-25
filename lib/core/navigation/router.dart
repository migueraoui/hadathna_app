import 'package:flutter/material.dart';
import 'package:hadathna_app/core/navigation/routes.dart';
import 'package:hadathna_app/features/sahihs/models/hadith.dart';
import 'package:hadathna_app/features/sahihs/models/sahih.dart';
import 'package:hadathna_app/features/sahihs/ui/pages/hadith.dart';
import 'package:hadathna_app/features/sahihs/ui/pages/home.dart';
import 'package:hadathna_app/features/sahihs/ui/pages/sahih.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final Map<String, WidgetBuilder> routes = {
      AppRoutes.home: (context) => HomeScreen(),
      AppRoutes.sahihPage: (context) {
        SahihModel sahihModel = settings.arguments as SahihModel;
        return SahihScreen(sahihModel: sahihModel);
      },
      AppRoutes.hadithPage: (context) {
        Hadith hadith = settings.arguments as Hadith;
        return HadithScreen(hadith: hadith);
      },
    };

    final builder = routes[settings.name];
    if (builder != null) {
      return MaterialPageRoute(builder: builder);
    }
    return null; 
  }
}
