// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomePageViewModel {
  CounterModel get counter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageViewModelCopyWith<HomePageViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageViewModelCopyWith<$Res> {
  factory $HomePageViewModelCopyWith(
          HomePageViewModel value, $Res Function(HomePageViewModel) then) =
      _$HomePageViewModelCopyWithImpl<$Res, HomePageViewModel>;
  @useResult
  $Res call({CounterModel counter});

  $CounterModelCopyWith<$Res> get counter;
}

/// @nodoc
class _$HomePageViewModelCopyWithImpl<$Res, $Val extends HomePageViewModel>
    implements $HomePageViewModelCopyWith<$Res> {
  _$HomePageViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as CounterModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CounterModelCopyWith<$Res> get counter {
    return $CounterModelCopyWith<$Res>(_value.counter, (value) {
      return _then(_value.copyWith(counter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomePageViewModelImplCopyWith<$Res>
    implements $HomePageViewModelCopyWith<$Res> {
  factory _$$HomePageViewModelImplCopyWith(_$HomePageViewModelImpl value,
          $Res Function(_$HomePageViewModelImpl) then) =
      __$$HomePageViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CounterModel counter});

  @override
  $CounterModelCopyWith<$Res> get counter;
}

/// @nodoc
class __$$HomePageViewModelImplCopyWithImpl<$Res>
    extends _$HomePageViewModelCopyWithImpl<$Res, _$HomePageViewModelImpl>
    implements _$$HomePageViewModelImplCopyWith<$Res> {
  __$$HomePageViewModelImplCopyWithImpl(_$HomePageViewModelImpl _value,
      $Res Function(_$HomePageViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$HomePageViewModelImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as CounterModel,
    ));
  }
}

/// @nodoc

class _$HomePageViewModelImpl extends _HomePageViewModel
    with DiagnosticableTreeMixin {
  const _$HomePageViewModelImpl({this.counter = const CounterModel()})
      : super._();

  @override
  @JsonKey()
  final CounterModel counter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomePageViewModel(counter: $counter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomePageViewModel'))
      ..add(DiagnosticsProperty('counter', counter));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageViewModelImpl &&
            (identical(other.counter, counter) || other.counter == counter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, counter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageViewModelImplCopyWith<_$HomePageViewModelImpl> get copyWith =>
      __$$HomePageViewModelImplCopyWithImpl<_$HomePageViewModelImpl>(
          this, _$identity);
}

abstract class _HomePageViewModel extends HomePageViewModel {
  const factory _HomePageViewModel({final CounterModel counter}) =
      _$HomePageViewModelImpl;
  const _HomePageViewModel._() : super._();

  @override
  CounterModel get counter;
  @override
  @JsonKey(ignore: true)
  _$$HomePageViewModelImplCopyWith<_$HomePageViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
