part of 'cat_bloc.dart';

@immutable
sealed class CatEvent {}

final class LoadCatGifEvent extends CatEvent {}