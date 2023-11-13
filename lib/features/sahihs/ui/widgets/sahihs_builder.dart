import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hadathna_app/core/extensions/context.dart';
import 'package:hadathna_app/core/navigation/routes.dart';
import 'package:hadathna_app/core/ui/widgets/book_card.dart';
import 'package:hadathna_app/core/ui/widgets/loading.dart';
import 'package:hadathna_app/features/sahihs/cubit/sahihs_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadathna_app/features/sahihs/models/sahih.dart';
class SahihsBuilder extends StatelessWidget {
  const SahihsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SahihsCubit, SahihsState>(
      builder: (context, state) {
        switch(state.runtimeType){
          case SahihsLoading:
          print('dd');
          return const LoadingWidget();
          case SahihsLoaded:
          print('ddd');
          List<SahihModel> sahihs = (state as SahihsLoaded).sahihsList;
          return 
GridView.builder(physics: const NeverScrollableScrollPhysics(),shrinkWrap: true,itemCount: sahihs.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 240.h,crossAxisSpacing: 10.w,mainAxisSpacing: 8.w), itemBuilder: (context, index) =>  GestureDetector(onTap: () => context.navigate(AppRoutes.sahihPage,sahihs[index]),child: BookCard(sahihModel: sahihs[index])),);

        }
        return const SizedBox();
      },
    );
  }
}