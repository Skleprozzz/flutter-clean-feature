class Failures implements Exception {
  const Failure({this.message, this.responseCode});

  final String? message;
  final String? responseCode;
}

sealed class <DEFAULT_FEATURE | pascalcase>Failures extends Failures {
  const <DEFAULT_FEATURE | pascalcase>Failures();
}

final class <DEFAULT_FEATURE | pascalcase>ApiFailure extends <DEFAULT_FEATURE | pascalcase>Failures {
  const <DEFAULT_FEATURE | pascalcase>ApiFailure();
}
