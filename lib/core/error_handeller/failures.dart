import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object?> get props => [getMessage()];

  String getMessage() {
    throw UnimplementedError();
  }
}

class CacheFailure extends Failure {
  @override
  String getMessage() => "error in cache";
}

class OfflineFailure extends Failure {
  @override
  String getMessage() => "No internet connection";
}

class EmptyCacheFailure extends Failure {
  @override
  String getMessage() => "Error in cache";
}

class ServerFailure extends Failure {
  final Exception error;

  ServerFailure({
    required this.error,
  });

  @override
  String getMessage() => error.toString();
}
