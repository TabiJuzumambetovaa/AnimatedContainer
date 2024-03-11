
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_practice1201/presentation/bloc/animated_event.dart';
import 'package:flutter_bloc_practice1201/presentation/bloc/animated_state.dart';

class AnimatedBloc extends Bloc<AnimatedEvent, AnimatedState> {
  AnimatedBloc() : super(AnimatedInitial(color: Colors.blue, size: 100)) {
    

    on<ClickEvent>(
      (event, emit) {
        emit(Animatedloading());
        try {
          emit(AnimatedInitial(
            color: event.randomColor,
            size: event.randomSize,
          ));


          AnimatedSuccess();
        } catch (e) {
          AnimatedError();
        }
      },
    );
  }
}
