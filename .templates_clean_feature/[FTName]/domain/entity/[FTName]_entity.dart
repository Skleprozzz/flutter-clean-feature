import 'package:freezed_annotation/freezed_annotation.dart';

part '<FTName>_entity.freezed.dart';

@freezed
abstract class <FTName | capitalCase>Entity with _$<FTName | capitalCase>Entity {
  const <FTName | capitalCase>Entity._();

  const factory <FTName | capitalCase>Entity() = _<FTName | capitalCase>Entity;
}