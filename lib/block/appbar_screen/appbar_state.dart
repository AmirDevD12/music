part of 'appbar_bloc.dart';

@immutable
abstract class AppbarState {}

class AppbarInitial extends AppbarState {}
class ShowSearchAppbarState extends AppbarState {}
class TimeLimitState extends AppbarState {
  String timeLimit;

  TimeLimitState(this.timeLimit);
}
