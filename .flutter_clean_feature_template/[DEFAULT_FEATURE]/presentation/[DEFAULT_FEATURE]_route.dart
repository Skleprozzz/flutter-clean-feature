import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



final class <DEFAULT_FEATURE | pascalcase>Route extends GoRouter with $<DEFAULT_FEATURE | pascalcase>Route {
  static const String name = '<DEFAULT_FEATURE | snakecase>';

  @override
  String get routeName => name;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider<<DEFAULT_FEATURE | pascalcase>Bloc>(
      create: (_) => sl.get<<DEFAULT_FEATURE | pascalcase>Bloc>(),
      child: const <DEFAULT_FEATURE | pascalcase>Page(),
    );
  }
}
