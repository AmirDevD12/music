part of 'appbar_bloc.dart';

@immutable
abstract class AppbarState {}

class AppbarInitial extends AppbarState {}
class ShowSearchAppbarState extends AppbarState {
  final bool isTextField;
  ShowSearchAppbarState({required this.isTextField});
}
class TimeLimitState extends AppbarState {
  String timeLimit;

  TimeLimitState(this.timeLimit);
}
