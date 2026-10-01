// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'nutrition_plan_status.dart';

class EkkloNutritionPlanStatusMapper
    extends EnumMapper<EkkloNutritionPlanStatus> {
  EkkloNutritionPlanStatusMapper._();

  static EkkloNutritionPlanStatusMapper? _instance;
  static EkkloNutritionPlanStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = EkkloNutritionPlanStatusMapper._(),
      );
    }
    return _instance!;
  }

  static EkkloNutritionPlanStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  EkkloNutritionPlanStatus decode(dynamic value) {
    switch (value) {
      case r'draft':
        return EkkloNutritionPlanStatus.draft;
      case r'pending':
        return EkkloNutritionPlanStatus.pending;
      case r'published':
        return EkkloNutritionPlanStatus.published;
      case r'archived':
        return EkkloNutritionPlanStatus.archived;
      case r'unknown':
        return EkkloNutritionPlanStatus.unknown;
      default:
        return EkkloNutritionPlanStatus.values[4];
    }
  }

  @override
  dynamic encode(EkkloNutritionPlanStatus self) {
    switch (self) {
      case EkkloNutritionPlanStatus.draft:
        return r'draft';
      case EkkloNutritionPlanStatus.pending:
        return r'pending';
      case EkkloNutritionPlanStatus.published:
        return r'published';
      case EkkloNutritionPlanStatus.archived:
        return r'archived';
      case EkkloNutritionPlanStatus.unknown:
        return r'unknown';
    }
  }
}

extension EkkloNutritionPlanStatusMapperExtension on EkkloNutritionPlanStatus {
  String toValue() {
    EkkloNutritionPlanStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<EkkloNutritionPlanStatus>(this)
        as String;
  }
}

