part of 'dashboard_bloc.dart';

abstract class DashboardEvent extends Equatable {
  const DashboardEvent();

  @override
  List<Object?> get props => [];
}

class DashboardLoadDataEvent extends DashboardEvent {
  final String? query;
  final bool? idle;
  const DashboardLoadDataEvent({this.query, this.idle});
}

class DashboardClearDataEvent extends DashboardEvent {}

class DashboardUploadImageEvent extends DashboardEvent {
  final PlatformFile image;
  final int id;

  const DashboardUploadImageEvent(this.image, this.id);

  @override
  List<Object?> get props => [id];
}
