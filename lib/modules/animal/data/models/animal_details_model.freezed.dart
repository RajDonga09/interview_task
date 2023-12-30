// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'animal_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnimalDetailsModel _$AnimalDetailsModelFromJson(Map<String, dynamic> json) {
  return _AnimalDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$AnimalDetailsModel {
  @Key('API')
  String get name => throw _privateConstructorUsedError;
  @Key('Description')
  String get description => throw _privateConstructorUsedError;
  @Key('Auth')
  String get auth => throw _privateConstructorUsedError;
  @Key('Cors')
  String get cors => throw _privateConstructorUsedError;
  @Key('Link')
  String get link => throw _privateConstructorUsedError;
  @Key('Category')
  String get category => throw _privateConstructorUsedError;
  @Key('HTTPS')
  bool get isHTTPS => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimalDetailsModelCopyWith<AnimalDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimalDetailsModelCopyWith<$Res> {
  factory $AnimalDetailsModelCopyWith(
          AnimalDetailsModel value, $Res Function(AnimalDetailsModel) then) =
      _$AnimalDetailsModelCopyWithImpl<$Res, AnimalDetailsModel>;
  @useResult
  $Res call(
      {@Key('API') String name,
      @Key('Description') String description,
      @Key('Auth') String auth,
      @Key('Cors') String cors,
      @Key('Link') String link,
      @Key('Category') String category,
      @Key('HTTPS') bool isHTTPS});
}

/// @nodoc
class _$AnimalDetailsModelCopyWithImpl<$Res, $Val extends AnimalDetailsModel>
    implements $AnimalDetailsModelCopyWith<$Res> {
  _$AnimalDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? auth = null,
    Object? cors = null,
    Object? link = null,
    Object? category = null,
    Object? isHTTPS = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as String,
      cors: null == cors
          ? _value.cors
          : cors // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      isHTTPS: null == isHTTPS
          ? _value.isHTTPS
          : isHTTPS // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnimalDetailsModelImplCopyWith<$Res>
    implements $AnimalDetailsModelCopyWith<$Res> {
  factory _$$AnimalDetailsModelImplCopyWith(_$AnimalDetailsModelImpl value,
          $Res Function(_$AnimalDetailsModelImpl) then) =
      __$$AnimalDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Key('API') String name,
      @Key('Description') String description,
      @Key('Auth') String auth,
      @Key('Cors') String cors,
      @Key('Link') String link,
      @Key('Category') String category,
      @Key('HTTPS') bool isHTTPS});
}

/// @nodoc
class __$$AnimalDetailsModelImplCopyWithImpl<$Res>
    extends _$AnimalDetailsModelCopyWithImpl<$Res, _$AnimalDetailsModelImpl>
    implements _$$AnimalDetailsModelImplCopyWith<$Res> {
  __$$AnimalDetailsModelImplCopyWithImpl(_$AnimalDetailsModelImpl _value,
      $Res Function(_$AnimalDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? auth = null,
    Object? cors = null,
    Object? link = null,
    Object? category = null,
    Object? isHTTPS = null,
  }) {
    return _then(_$AnimalDetailsModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as String,
      cors: null == cors
          ? _value.cors
          : cors // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      isHTTPS: null == isHTTPS
          ? _value.isHTTPS
          : isHTTPS // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnimalDetailsModelImpl
    with DiagnosticableTreeMixin
    implements _AnimalDetailsModel {
  const _$AnimalDetailsModelImpl(
      {@Key('API') required this.name,
      @Key('Description') required this.description,
      @Key('Auth') required this.auth,
      @Key('Cors') required this.cors,
      @Key('Link') required this.link,
      @Key('Category') required this.category,
      @Key('HTTPS') this.isHTTPS = false});

  factory _$AnimalDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnimalDetailsModelImplFromJson(json);

  @override
  @Key('API')
  final String name;
  @override
  @Key('Description')
  final String description;
  @override
  @Key('Auth')
  final String auth;
  @override
  @Key('Cors')
  final String cors;
  @override
  @Key('Link')
  final String link;
  @override
  @Key('Category')
  final String category;
  @override
  @JsonKey()
  @Key('HTTPS')
  final bool isHTTPS;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnimalDetailsModel(name: $name, description: $description, auth: $auth, cors: $cors, link: $link, category: $category, isHTTPS: $isHTTPS)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnimalDetailsModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('auth', auth))
      ..add(DiagnosticsProperty('cors', cors))
      ..add(DiagnosticsProperty('link', link))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('isHTTPS', isHTTPS));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimalDetailsModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.cors, cors) || other.cors == cors) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.isHTTPS, isHTTPS) || other.isHTTPS == isHTTPS));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, description, auth, cors, link, category, isHTTPS);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimalDetailsModelImplCopyWith<_$AnimalDetailsModelImpl> get copyWith =>
      __$$AnimalDetailsModelImplCopyWithImpl<_$AnimalDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnimalDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _AnimalDetailsModel implements AnimalDetailsModel {
  const factory _AnimalDetailsModel(
      {@Key('API') required final String name,
      @Key('Description') required final String description,
      @Key('Auth') required final String auth,
      @Key('Cors') required final String cors,
      @Key('Link') required final String link,
      @Key('Category') required final String category,
      @Key('HTTPS') final bool isHTTPS}) = _$AnimalDetailsModelImpl;

  factory _AnimalDetailsModel.fromJson(Map<String, dynamic> json) =
      _$AnimalDetailsModelImpl.fromJson;

  @override
  @Key('API')
  String get name;
  @override
  @Key('Description')
  String get description;
  @override
  @Key('Auth')
  String get auth;
  @override
  @Key('Cors')
  String get cors;
  @override
  @Key('Link')
  String get link;
  @override
  @Key('Category')
  String get category;
  @override
  @Key('HTTPS')
  bool get isHTTPS;
  @override
  @JsonKey(ignore: true)
  _$$AnimalDetailsModelImplCopyWith<_$AnimalDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
