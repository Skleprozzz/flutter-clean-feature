import 'package:freezed_annotation/freezed_annotation.dart';

part '<FEATURE>_entity.freezed.dart';

@freezed
abstract class <FEATURE | pascalcase>Entity with _$<FEATURE | pascalcase>Entity {
  const <FEATURE | pascalcase>Entity._();

  const factory <FEATURE | pascalcase>Entity() = _<FEATURE | pascalcase>Entity;
}