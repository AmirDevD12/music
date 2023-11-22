import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(DashboardInitial()) {
    on<ChangeDashboardWithIconButtonEvent>((event, emit) {
      emit(ChangeDashboardWithIconButtonState());
      // TODO: implement event handler
    });
    on<ShowPopForDashboardEvent>((event, emit) {
      emit(ShowPopForDashboardState());
    });
  }
}
