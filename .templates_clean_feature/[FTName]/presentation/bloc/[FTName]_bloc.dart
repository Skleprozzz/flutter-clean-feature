import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '<FTName>_event.dart';
part '<FTName>_state.dart';
part '<FTName>_bloc.freezed.dart';

class <FTName | pascalcase>Bloc extends Bloc<<FTName | pascalcase>Event, <FTName | pascalcase>State> {
  <FTName | pascalcase>Bloc({required this.<FTName | camelCase>Usecase}) : super(_<FTName | pascalcase>State()) {
    on<<FTName | pascalcase>Event>((event, emit) {
      // TODO: implement event handler
    });
  }

  final <FTName | pascalcase>UseCase <FTName | camelCase>UseCase;
}
