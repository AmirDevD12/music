part of 'dashboard_bloc.dart';

@immutable
abstract class DashboardEvent {}
class ChangeDashboardWithIconButtonEvent extends DashboardEvent{}
class ShowPopForDashboardEvent extends DashboardEvent{}
