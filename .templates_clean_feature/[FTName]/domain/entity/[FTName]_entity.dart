import 'package:freezed_annotation/freezed_annotation.dart';

part '<FTName>_entity.freezed.dart';

@freezed
abstract class <FTName | pascalcase>Entity with _$<FTName | pascalcase>Entity {
  const <FTName | pascalcase>Entity._();

  const factory <FTName | pascalcase>Entity() = _<FTName | pascalcase>Entity;
}