class Failure implements Exception {
  const Failure({this.message, this.responseCode});

  final String? message;
  final String? responseCode;
}

sealed class <FTName | pascalcase>Failure extends Failure {

}

final class <FTName | pascalcase>ApiFailure extends <FTName | pascalcase>Failure {}
