// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'animals_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnimalsApiResponse _$AnimalsApiResponseFromJson(Map<String, dynamic> json) {
  return _AnimalsApiResponse.fromJson(json);
}

/// @nodoc
mixin _$AnimalsApiResponse {
  int get count => throw _privateConstructorUsedError;
  @Key('entries')
  List<AnimalDetailsModel> get animalsList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimalsApiResponseCopyWith<AnimalsApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimalsApiResponseCopyWith<$Res> {
  factory $AnimalsApiResponseCopyWith(
          AnimalsApiResponse value, $Res Function(AnimalsApiResponse) then) =
      _$AnimalsApiResponseCopyWithImpl<$Res, AnimalsApiResponse>;
  @useResult
  $Res call({int count, @Key('entries') List<AnimalDetailsModel> animalsList});
}

/// @nodoc
class _$AnimalsApiResponseCopyWithImpl<$Res, $Val extends AnimalsApiResponse>
    implements $AnimalsApiResponseCopyWith<$Res> {
  _$AnimalsApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? animalsList = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      animalsList: null == animalsList
          ? _value.animalsList
          : animalsList // ignore: cast_nullable_to_non_nullable
              as List<AnimalDetailsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnimalsApiResponseImplCopyWith<$Res>
    implements $AnimalsApiResponseCopyWith<$Res> {
  factory _$$AnimalsApiResponseImplCopyWith(_$AnimalsApiResponseImpl value,
          $Res Function(_$AnimalsApiResponseImpl) then) =
      __$$AnimalsApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, @Key('entries') List<AnimalDetailsModel> animalsList});
}

/// @nodoc
class __$$AnimalsApiResponseImplCopyWithImpl<$Res>
    extends _$AnimalsApiResponseCopyWithImpl<$Res, _$AnimalsApiResponseImpl>
    implements _$$AnimalsApiResponseImplCopyWith<$Res> {
  __$$AnimalsApiResponseImplCopyWithImpl(_$AnimalsApiResponseImpl _value,
      $Res Function(_$AnimalsApiResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? animalsList = null,
  }) {
    return _then(_$AnimalsApiResponseImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      animalsList: null == animalsList
          ? _value._animalsList
          : animalsList // ignore: cast_nullable_to_non_nullable
              as List<AnimalDetailsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnimalsApiResponseImpl
    with DiagnosticableTreeMixin
    implements _AnimalsApiResponse {
  const _$AnimalsApiResponseImpl(
      {required this.count,
      @Key('entries') required final List<AnimalDetailsModel> animalsList})
      : _animalsList = animalsList;

  factory _$AnimalsApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnimalsApiResponseImplFromJson(json);

  @override
  final int count;
  final List<AnimalDetailsModel> _animalsList;
  @override
  @Key('entries')
  List<AnimalDetailsModel> get animalsList {
    if (_animalsList is EqualUnmodifiableListView) return _animalsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_animalsList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnimalsApiResponse(count: $count, animalsList: $animalsList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnimalsApiResponse'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('animalsList', animalsList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimalsApiResponseImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality()
                .equals(other._animalsList, _animalsList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_animalsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimalsApiResponseImplCopyWith<_$AnimalsApiResponseImpl> get copyWith =>
      __$$AnimalsApiResponseImplCopyWithImpl<_$AnimalsApiResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnimalsApiResponseImplToJson(
      this,
    );
  }
}

abstract class _AnimalsApiResponse implements AnimalsApiResponse {
  const factory _AnimalsApiResponse(
          {required final int count,
          @Key('entries')
          required final List<AnimalDetailsModel> animalsList}) =
      _$AnimalsApiResponseImpl;

  factory _AnimalsApiResponse.fromJson(Map<String, dynamic> json) =
      _$AnimalsApiResponseImpl.fromJson;

  @override
  int get count;
  @override
  @Key('entries')
  List<AnimalDetailsModel> get animalsList;
  @override
  @JsonKey(ignore: true)
  _$$AnimalsApiResponseImplCopyWith<_$AnimalsApiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
