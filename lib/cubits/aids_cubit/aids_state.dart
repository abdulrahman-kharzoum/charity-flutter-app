part of 'aids_cubit.dart';

abstract class AidsState {
  const AidsState();
}

class AidsInitial extends AidsState {}

class AidsLoading extends AidsState {} // For skeleton or general loading

class AidsLoaded extends AidsState {
  final List<AidModel> aids;
  const AidsLoaded(this.aids);
}

class AidsError extends AidsState {
  final String message;
  const AidsError(this.message);
}