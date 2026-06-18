part of 'cat_bloc.dart';

@immutable
sealed class CatState {}

final class CatInitial extends CatState {}

final class LoadingCatState extends CatState{}

final class ErrorCatState extends CatState{}

final class LoadedCatState extends CatState{
  
  final String gif;

  LoadedCatState({required this.gif});

}
