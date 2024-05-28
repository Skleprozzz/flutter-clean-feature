class Failures implements Exception {
  const Failure({this.message, this.responseCode});

  final String? message;
  final String? responseCode;
}

sealed class <FTName | pascalcase>Failures extends Failure {
  const <FTName | pascalcase>Failures();
}

final class <FTName | pascalcase>ApiFailure extends <FTName | pascalcase>Failures {
  const <FTName | pascalcase>ApiFailure();
}
