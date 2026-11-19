// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'reaction.dart';

class EkkloReactionMapper extends ClassMapperBase<EkkloReaction> {
  EkkloReactionMapper._();

  static EkkloReactionMapper? _instance;
  static EkkloReactionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloReactionMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloReaction';

  static String _$emoji(EkkloReaction v) => v.emoji;
  static const Field<EkkloReaction, String> _f$emoji = Field('emoji', _$emoji);
  static int _$count(EkkloReaction v) => v.count;
  static const Field<EkkloReaction, int> _f$count = Field('count', _$count);
  static bool _$mine(EkkloReaction v) => v.mine;
  static const Field<EkkloReaction, bool> _f$mine = Field(
    'mine',
    _$mine,
    opt: true,
    def: false,
  );

  @override
  final MappableFields<EkkloReaction> fields = const {
    #emoji: _f$emoji,
    #count: _f$count,
    #mine: _f$mine,
  };
  @override
  final bool ignoreNull = true;

  static EkkloReaction _instantiate(DecodingData data) {
    return EkkloReaction(
      emoji: data.dec(_f$emoji),
      count: data.dec(_f$count),
      mine: data.dec(_f$mine),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloReaction fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloReaction>(map);
  }

  static EkkloReaction fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloReaction>(json);
  }
}

mixin EkkloReactionMappable {
  String toJson() {
    return EkkloReactionMapper.ensureInitialized().encodeJson<EkkloReaction>(
      this as EkkloReaction,
    );
  }

  Map<String, dynamic> toMap() {
    return EkkloReactionMapper.ensureInitialized().encodeMap<EkkloReaction>(
      this as EkkloReaction,
    );
  }

  EkkloReactionCopyWith<EkkloReaction, EkkloReaction, EkkloReaction>
  get copyWith => _EkkloReactionCopyWithImpl<EkkloReaction, EkkloReaction>(
    this as EkkloReaction,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return EkkloReactionMapper.ensureInitialized().stringifyValue(
      this as EkkloReaction,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloReactionMapper.ensureInitialized().equalsValue(
      this as EkkloReaction,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloReactionMapper.ensureInitialized().hashValue(
      this as EkkloReaction,
    );
  }
}

extension EkkloReactionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloReaction, $Out> {
  EkkloReactionCopyWith<$R, EkkloReaction, $Out> get $asEkkloReaction =>
      $base.as((v, t, t2) => _EkkloReactionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EkkloReactionCopyWith<$R, $In extends EkkloReaction, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? emoji, int? count, bool? mine});
  EkkloReactionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EkkloReactionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloReaction, $Out>
    implements EkkloReactionCopyWith<$R, EkkloReaction, $Out> {
  _EkkloReactionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloReaction> $mapper =
      EkkloReactionMapper.ensureInitialized();
  @override
  $R call({String? emoji, int? count, bool? mine}) => $apply(
    FieldCopyWithData({
      if (emoji != null) #emoji: emoji,
      if (count != null) #count: count,
      if (mine != null) #mine: mine,
    }),
  );
  @override
  EkkloReaction $make(CopyWithData data) => EkkloReaction(
    emoji: data.get(#emoji, or: $value.emoji),
    count: data.get(#count, or: $value.count),
    mine: data.get(#mine, or: $value.mine),
  );

  @override
  EkkloReactionCopyWith<$R2, EkkloReaction, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloReactionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

