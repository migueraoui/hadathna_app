import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hadathna_app/core/app/style.dart';

class CustomText extends StatelessWidget {
  const CustomText(this.text,{super.key,   this.color = black,  this.fontSize ,  this.textAlign = TextAlign.start , this.fontWeight = FontWeight.normal,this.textOverflow = TextOverflow.visible,this.height});
  final String text;
  final Color color;
  final double? fontSize ;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final TextOverflow textOverflow;
  final double? height; 
  @override
  Widget build(BuildContext context) {
    return  Text(text,style: TextStyle(height: height, fontSize:  fontSize ?? 12.sp,color: color,fontWeight: fontWeight),textAlign: textAlign,overflow: textOverflow,maxLines: null,textDirection: TextDirection.rtl,);
  }
}