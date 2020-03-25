part of 'shuttle_bloc.dart';

abstract class ShuttleState extends Equatable {
  const ShuttleState();
}

class ShuttleInitial extends ShuttleState {
  const ShuttleInitial();
  @override
  List<Object> get props => [];
}

class ShuttleLoading extends ShuttleState {
  const ShuttleLoading();
  @override
  List<Object> get props => [];
}

class ShuttleLoaded extends ShuttleState {
  final List<Polyline> routes;
  final List<Marker> location;
  final List<Marker> updates;
  final List<Marker> stops;
  final List<Widget> mapkey;

  const ShuttleLoaded(
      this.routes, this.location, this.updates, this.stops, this.mapkey);
  @override
  List<Object> get props => [routes, location, updates, stops, mapkey];
}

class ShuttleError extends ShuttleState {
  final String message;
  const ShuttleError({this.message});
  @override
  List<Object> get props => [message];
}