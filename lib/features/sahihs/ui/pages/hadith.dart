import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hadathna_app/core/extensions/context.dart';
import 'package:hadathna_app/core/ui/widgets/custom_text.dart';
import 'package:hadathna_app/features/sahihs/models/hadith.dart';

class HadithScreen extends StatelessWidget {
  const HadithScreen({super.key, required this.hadith});
  final Hadith hadith;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(title:  CustomText('Hadith ${hadith.number} Book ${hadith.book}',color: context.colorScheme.onPrimary,fontSize: 14.sp,fontWeight: FontWeight.bold,),centerTitle: true,backgroundColor: context.colorScheme.background,),
  body: SingleChildScrollView(padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 14.h),child: CustomText(hadith.content,height: 0, color: context.colorScheme.onPrimary.withOpacity(0.8),fontSize: 16.sp,fontWeight: FontWeight.w500,),),
    );
  }
}