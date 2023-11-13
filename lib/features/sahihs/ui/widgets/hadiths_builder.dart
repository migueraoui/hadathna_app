import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hadathna_app/core/extensions/context.dart';
import 'package:hadathna_app/core/navigation/routes.dart';
import 'package:hadathna_app/core/ui/widgets/custom_text.dart';
import 'package:hadathna_app/core/ui/widgets/loading.dart';
import 'package:hadathna_app/features/sahihs/cubit/hadiths_cubit.dart';
import 'package:hadathna_app/features/sahihs/models/hadith.dart';

class HadithsBuilder extends StatefulWidget {
  const HadithsBuilder({super.key});

  @override
  State<HadithsBuilder> createState() => _HadithsBuilderState();
}

class _HadithsBuilderState extends State<HadithsBuilder> {
  List<Hadith> hadiths = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HadithsCubit, HadithsState>(
      listener: (context, state) {
        if(state is HadithsLoaded){
          hadiths.addAll(state.hadithsList);
          
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case HadithsLoading:
          return const LoadingWidget();
            
          case HadithsLoaded:
            
            return GridView.builder(itemCount: hadiths.length,shrinkWrap: true,physics: const NeverScrollableScrollPhysics(),gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10.h,crossAxisSpacing: 10.w), itemBuilder: (context, index) => 
       GestureDetector(onTap: () => context.navigate(AppRoutes.hadithPage, hadiths[index]),child: HadithCard(hadith: hadiths[index],)),);
          default:
          return const SizedBox();
        }
      },
    );
  }
}

class HadithCard extends StatelessWidget {
  const HadithCard({
    super.key, required this.hadith,
  });
  final Hadith hadith;

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: const BoxDecoration(color: Color.fromARGB(24, 0, 0, 0)),
     padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 14.w),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.end,
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
       Row(
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Icon(CarbonIcons.favorite,color: context.colorScheme.onPrimary,),
         ],
       )
       ,Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           CustomText('Hadith ${hadith.number} Book ${hadith.book}',color: context.colorScheme.onPrimary,fontWeight: FontWeight.w600,),
           SizedBox(height: 4.h,),
       CustomText(hadith.content,color: context.colorScheme.onPrimary.withOpacity(0.6),textOverflow: TextOverflow.ellipsis,)

         ],
       )

     ],),
      );
  }
}