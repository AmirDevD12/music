part of 'appbar_bloc.dart';

@immutable
abstract class AppbarEvent {}
class ShowSearchAppbarEvent extends AppbarEvent{}
class TimeLimitEvent extends AppbarEvent{
  String timeLimit;
  TimeLimitEvent({required this.timeLimit});
}
