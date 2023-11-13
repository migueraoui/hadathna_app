import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hadathna_app/core/extensions/context.dart';
import 'package:hadathna_app/core/ui/widgets/custom_text.dart';
import 'package:hadathna_app/features/sahihs/cubit/sahihs_cubit.dart';
import 'package:hadathna_app/features/sahihs/ui/widgets/sahihs_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<SahihsCubit>().getSahihs();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      endDrawer: const Drawer(),
  
      appBar: AppBar(iconTheme:  IconThemeData(color: context.colorScheme.onPrimary),title:  CustomText('الرئيسية',color: context.colorScheme.onPrimary,fontSize: 14.sp,fontWeight: FontWeight.bold,),centerTitle: true,backgroundColor: context.colorScheme.background,),
      body: SingleChildScrollView(padding: EdgeInsets.symmetric(horizontal: 18.w),child: const Column(crossAxisAlignment: CrossAxisAlignment.stretch,children: [
        SahihsBuilder(),
      ],),),
    );
  }
}