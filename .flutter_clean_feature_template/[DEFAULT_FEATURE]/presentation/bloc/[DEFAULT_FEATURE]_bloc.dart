import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../flutter_clean_feature_template/[DEFAULT_FEATURE]/presentation/bloc/<DEFAULT_FEATURE>_event.dart';
part '../../../../flutter_clean_feature_template/[DEFAULT_FEATURE]/presentation/bloc/<DEFAULT_FEATURE>_state.dart';
part '../../../../flutter_clean_feature_template/[DEFAULT_FEATURE]/presentation/bloc/<DEFAULT_FEATURE>_bloc.freezed.dart';

class <DEFAULT_FEATURE | pascalcase>Bloc extends Bloc<<DEFAULT_FEATURE | pascalcase>Event, <DEFAULT_FEATURE | pascalcase>State> {
  <DEFAULT_FEATURE | pascalcase>Bloc({required this.<DEFAULT_FEATURE | camelCase>Usecase}) : super(_<DEFAULT_FEATURE | pascalcase>State()) {
    on<<DEFAULT_FEATURE | pascalcase>Event>((event, emit) {
      // TODO: implement event handler
    });
  }

  final <DEFAULT_FEATURE | pascalcase>UseCase <DEFAULT_FEATURE | camelCase>UseCase;
}
