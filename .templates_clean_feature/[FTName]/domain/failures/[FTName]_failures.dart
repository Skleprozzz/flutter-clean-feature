class Failure implements Exception {
  const Failure({this.message, this.responseCode});

  final String? message;
  final String? responseCode;
}

sealed class <FTName | capitalCase>Failures extends Failure {

}

final class <FTName | capitalCase>ApiFailure extends <FTName | capitalCase>Failure {}
