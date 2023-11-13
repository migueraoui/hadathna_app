import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hadathna_app/core/app/di.dart';
import 'package:hadathna_app/core/app/style.dart';
import 'package:hadathna_app/core/navigation/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(builder:(context, child) => DI(child:  MaterialApp(debugShowCheckedModeBanner: false,theme: darkTheme,onGenerateRoute: AppRouter.onGenerateRoute,initialRoute: '/',)));
  }
}