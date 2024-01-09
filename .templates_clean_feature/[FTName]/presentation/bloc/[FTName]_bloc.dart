import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '<FTName>_event.dart';
part '<FTName>_state.dart';
part '<FTName>_bloc.freezed.dart';

class <FTName | capitalCase>Bloc extends Bloc<<FTName | capitalCase>Event, <FTName | capitalCase>State> {
  <FTName | capitalCase>Bloc() : super(TestInitial()) {
    on<<FTName | capitalCase>Event>((event, emit) {
      // TODO: implement event handler
    });
  }

  final StatsUseCase statsUseCase;
}
