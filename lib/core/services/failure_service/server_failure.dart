import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'failure.dart';

class ServerFailure extends Equatable implements Failure {
  final String message;

  const ServerFailure(this.message);

  @override
  Future<void> handle(BuildContext context, {void Function()? onRetry}) async {
    // TODO: Implement error handling logic
  }

  @override
  List<Object> get props => [message];

  @override
  String toString() => 'ServerFailure: $message';
}