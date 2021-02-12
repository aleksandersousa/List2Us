import 'bloc.dart';

abstract class NetworkEvent {}

class ListenConnection extends NetworkEvent {}

class ConnectionChanged extends NetworkEvent {
  ConnectionChanged(this.connection);

  NetworkState connection;
}