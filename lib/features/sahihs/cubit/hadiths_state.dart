part of 'hadiths_cubit.dart';

@immutable
sealed class HadithsState {}

final class HadithsInitial extends HadithsState {}
final class HadithsLoading extends HadithsState {}

final class HadithsLoaded extends HadithsState {
  final List<Hadith> hadithsList ;

  HadithsLoaded({required this.hadithsList});
}

