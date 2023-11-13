import 'package:flutter/material.dart';



extension ContextValues on BuildContext{
  TextTheme get  theme => Theme.of(this).textTheme;
   get colorScheme => Theme.of(this).colorScheme;
  
  void navigate(String routeName, dynamic arguments){
    Navigator.of(this).pushNamed(routeName,arguments: arguments);
  }
   void navigateWithoutReturn(String routeName){
    Navigator.of(this).pushReplacementNamed(routeName);
  }
}
