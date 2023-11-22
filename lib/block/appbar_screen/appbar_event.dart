part of 'appbar_bloc.dart';

@immutable
abstract class AppbarEvent {}
class ShowSearchAppbarEvent extends AppbarEvent{
  final bool isTextField;
  ShowSearchAppbarEvent({required this.isTextField});
}
class TimeLimitEvent extends AppbarEvent{
  String timeLimit;
  TimeLimitEvent({required this.timeLimit});
}
