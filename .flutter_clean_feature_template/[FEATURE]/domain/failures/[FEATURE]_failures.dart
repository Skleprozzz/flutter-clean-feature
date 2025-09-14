class Failures implements Exception {
  const Failure({this.message, this.responseCode});

  final String? message;
  final String? responseCode;
}

sealed class <FEATURE | pascalcase>Failures extends Failures {
  const <FEATURE | pascalcase>Failures();
}

final class <FEATURE | pascalcase>ApiFailure extends <FEATURE | pascalcase>Failures {
  const <FEATURE | pascalcase>ApiFailure();
}
