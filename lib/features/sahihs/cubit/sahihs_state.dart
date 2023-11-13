part of 'sahihs_cubit.dart';

@immutable
sealed class SahihsState {}

final class SahihsInitial extends SahihsState {}

final class SahihsLoading extends SahihsState{}

final class SahihsLoaded extends SahihsState{
  final List<SahihModel> sahihsList ;

  SahihsLoaded({required this.sahihsList});
}
