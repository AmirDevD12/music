import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'appbar_event.dart';
part 'appbar_state.dart';

class AppbarBloc extends Bloc<AppbarEvent, AppbarState> {
  AppbarBloc() : super(AppbarInitial()) {
    on<ShowSearchAppbarEvent>((event, emit) {
      // TODO: implement event handler
      emit(ShowSearchAppbarState(isTextField:event.isTextField));
    });
    on<TimeLimitEvent>((event, emit) {
      emit(TimeLimitState(event.timeLimit));
    });
  }

}
