part of 'dashboard_bloc.dart';

@immutable
abstract class DashboardState {}

class DashboardInitial extends DashboardState {}
class ChangeDashboardWithIconButtonState extends DashboardState {}
class ShowPopForDashboardState extends DashboardState {

}
class ShowSecondPopState extends DashboardState {
  final bool show;
  final int top;

  ShowSecondPopState(this.show,this.top);
}
