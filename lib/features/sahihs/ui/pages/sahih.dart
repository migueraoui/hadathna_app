import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hadathna_app/core/app/style.dart';
import 'package:hadathna_app/core/extensions/context.dart';
import 'package:hadathna_app/core/ui/widgets/custom_text.dart';
import 'package:carbon_icons/carbon_icons.dart';
import 'package:hadathna_app/features/sahihs/cubit/hadiths_cubit.dart';
import 'package:hadathna_app/features/sahihs/models/sahih.dart';
import 'package:hadathna_app/features/sahihs/ui/widgets/hadiths_builder.dart';

class SahihScreen extends StatefulWidget {
  const SahihScreen({super.key, required this.sahihModel});
  final SahihModel sahihModel;

  @override
  State<SahihScreen> createState() => _SahihScreenState();
}

class _SahihScreenState extends State<SahihScreen> {
  int start =0 ;
  int end = 15 ; 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<HadithsCubit>().getHadiths(widget.sahihModel.source,start,end);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title:  CustomText(widget.sahihModel.name,color: context.colorScheme.onPrimary,fontSize: 14.sp,fontWeight: FontWeight.bold,),centerTitle: true,backgroundColor: context.colorScheme.background,),
  body: NotificationListener(
    onNotification: (notification) {
      if(notification is ScrollEndNotification){
        context.read<HadithsCubit>().getHadiths(widget.sahihModel.source,start,end+15);
      }
      return true; 
    },
    child: SingleChildScrollView(padding: EdgeInsets.symmetric(horizontal: 16.w),child: Center(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
        SizedBox(height: 32.h,),
        ClipRRect(borderRadius: borderRadius,child: Image.asset(widget.sahihModel.cover,width: 120.w,fit: BoxFit.cover,height: 170.h,)),
        SizedBox(height: 12.h,),
  
        CustomText(widget.sahihModel.name,fontWeight: FontWeight.bold,color: context.colorScheme.onPrimary,fontSize: 16.sp,),
        SizedBox(height: 22.h,),
        Divider(height: 0.5.h),
        SizedBox(height: 12.h,),
  
        HadithsBuilder(),
        SizedBox(height: 22.h,)
      ],),
    ),),
  ),
    );
  }
}