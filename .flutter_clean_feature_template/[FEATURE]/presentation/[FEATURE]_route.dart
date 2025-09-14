import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



final class <FEATURE | pascalcase>Route extends GoRouter with $<FEATURE | pascalcase>Route {
  static const String name = '<FEATURE | snakecase>';

  @override
  String get routeName => name;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider<<FEATURE | pascalcase>Bloc>(
      create: (_) => sl.get<<FEATURE | pascalcase>Bloc>(),
      child: const <FEATURE | pascalcase>Page(),
    );
  }
}
