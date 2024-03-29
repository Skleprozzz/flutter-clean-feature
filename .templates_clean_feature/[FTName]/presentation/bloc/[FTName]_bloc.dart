import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '<FTName>_event.dart';
part '<FTName>_state.dart';
part '<FTName>_bloc.freezed.dart';

class <FTName | capitalCase>Bloc extends Bloc<<FTName | capitalCase>Event, <FTName | capitalCase>State> {
  <FTName | capitalCase>Bloc({required this.<FTName | camelCase>Usecase}) : super(_<FTName | capitalCase>State()) {
    on<<FTName | capitalCase>Event>((event, emit) {
      // TODO: implement event handler
    });
  }

  final <FTName | capitalCase>UseCase <FTName | camelCase>UseCase;
}
