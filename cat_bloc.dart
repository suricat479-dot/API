import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:month_4/homework%202/data/repository.dart';

part 'cat_event.dart';
part 'cat_state.dart';

class CatBloc extends Bloc<CatEvent, CatState> {
  final Repository _repository = Repository();
  CatBloc() : super(CatInitial()) {
    on<LoadCatGifEvent>((LoadCatGifEvent event, Emitter<CatState> emit) async {
      try {
        emit(LoadingCatState());
        final String gif = await _repository.loadImage();
        emit(LoadedCatState(gif: gif));   
      } catch (e) {
        emit(ErrorCatState());
      }
    });
  }
}
