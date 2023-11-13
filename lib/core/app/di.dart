import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadathna_app/features/sahihs/cubit/hadiths_cubit.dart';
import 'package:hadathna_app/features/sahihs/cubit/sahihs_cubit.dart';
import 'package:hadathna_app/features/sahihs/repository/hadiths_repository.dart';
import 'package:hadathna_app/features/sahihs/repository/sahihs_repository.dart';

class DI extends StatelessWidget {
  const DI({super.key, required this.child});
final Widget child;
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(providers: [
      BlocProvider(create: (context) => SahihsCubit(SahihRepository()),),
      BlocProvider(create: (context) => HadithsCubit(HadithsRepo()),)

    ],child: child,);
  }
}