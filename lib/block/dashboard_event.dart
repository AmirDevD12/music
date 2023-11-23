part of 'dashboard_bloc.dart';

@immutable
abstract class DashboardEvent {}
class ChangeDashboardWithIconButtonEvent extends DashboardEvent{}
class ShowPopForDashboardEvent extends DashboardEvent{

}
class ShowSecondPopEvent extends DashboardEvent{
  final bool show;
  final int top;
  ShowSecondPopEvent(this.show,this.top);
}
