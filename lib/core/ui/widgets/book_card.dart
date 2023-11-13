import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hadathna_app/core/app/style.dart';
import 'package:hadathna_app/core/extensions/context.dart';
import 'package:hadathna_app/core/ui/widgets/custom_text.dart';
import 'package:hadathna_app/features/sahihs/models/sahih.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.sahihModel});
  final SahihModel sahihModel;
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ClipRRect(borderRadius: borderRadius,child: Image.asset(sahihModel.cover,fit: BoxFit.cover,height: 190.h,)),
        SizedBox(height: 10.sp,),
        CustomText(sahihModel.name,color: context.colorScheme.onPrimary,fontWeight: FontWeight.w600,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            
            const CustomText('حديث' ,color: Colors.teal,fontWeight: FontWeight.w500,),
      
            CustomText(' ${ sahihModel.hadithsNumber.toString()}' ,color: Colors.teal,fontWeight: FontWeight.w500,),

          ],
        ),

      ],
    );
  }
}