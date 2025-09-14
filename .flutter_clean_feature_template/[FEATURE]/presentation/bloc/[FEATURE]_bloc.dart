import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '<FEATURE>_event.dart';
part '<FEATURE>_state.dart';
part '<FEATURE>_bloc.freezed.dart';

class <FEATURE | pascalcase>Bloc extends Bloc<<FEATURE | pascalcase>Event, <FEATURE | pascalcase>State> {
  <FEATURE | pascalcase>Bloc({required this.<FEATURE | camelCase>Usecase}) : super(_<FEATURE | pascalcase>State()) {
    on<<FEATURE | pascalcase>Event>((event, emit) {
      // TODO: implement event handler
    });
  }

  final <FEATURE | pascalcase>UseCase <FEATURE | camelCase>UseCase;
}
