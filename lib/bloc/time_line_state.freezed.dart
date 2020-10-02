// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'time_line_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TimeLineStateTearOff {
  const _$TimeLineStateTearOff();

// ignore: unused_element
  _TimeLineState call(
      {dynamic status = Status.iddle,
      int currentPage = 0,
      @required int numberOfPublications,
      List<Publication> publications = const []}) {
    return _TimeLineState(
      status: status,
      currentPage: currentPage,
      numberOfPublications: numberOfPublications,
      publications: publications,
    );
  }
}

// ignore: unused_element
const $TimeLineState = _$TimeLineStateTearOff();

mixin _$TimeLineState {
  dynamic get status;
  int get currentPage;
  int get numberOfPublications;
  List<Publication> get publications;

  $TimeLineStateCopyWith<TimeLineState> get copyWith;
}

abstract class $TimeLineStateCopyWith<$Res> {
  factory $TimeLineStateCopyWith(
          TimeLineState value, $Res Function(TimeLineState) then) =
      _$TimeLineStateCopyWithImpl<$Res>;
  $Res call(
      {dynamic status,
      int currentPage,
      int numberOfPublications,
      List<Publication> publications});
}

class _$TimeLineStateCopyWithImpl<$Res>
    implements $TimeLineStateCopyWith<$Res> {
  _$TimeLineStateCopyWithImpl(this._value, this._then);

  final TimeLineState _value;
  // ignore: unused_field
  final $Res Function(TimeLineState) _then;

  @override
  $Res call({
    Object status = freezed,
    Object currentPage = freezed,
    Object numberOfPublications = freezed,
    Object publications = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as dynamic,
      currentPage:
          currentPage == freezed ? _value.currentPage : currentPage as int,
      numberOfPublications: numberOfPublications == freezed
          ? _value.numberOfPublications
          : numberOfPublications as int,
      publications: publications == freezed
          ? _value.publications
          : publications as List<Publication>,
    ));
  }
}

abstract class _$TimeLineStateCopyWith<$Res>
    implements $TimeLineStateCopyWith<$Res> {
  factory _$TimeLineStateCopyWith(
          _TimeLineState value, $Res Function(_TimeLineState) then) =
      __$TimeLineStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic status,
      int currentPage,
      int numberOfPublications,
      List<Publication> publications});
}

class __$TimeLineStateCopyWithImpl<$Res>
    extends _$TimeLineStateCopyWithImpl<$Res>
    implements _$TimeLineStateCopyWith<$Res> {
  __$TimeLineStateCopyWithImpl(
      _TimeLineState _value, $Res Function(_TimeLineState) _then)
      : super(_value, (v) => _then(v as _TimeLineState));

  @override
  _TimeLineState get _value => super._value as _TimeLineState;

  @override
  $Res call({
    Object status = freezed,
    Object currentPage = freezed,
    Object numberOfPublications = freezed,
    Object publications = freezed,
  }) {
    return _then(_TimeLineState(
      status: status == freezed ? _value.status : status,
      currentPage:
          currentPage == freezed ? _value.currentPage : currentPage as int,
      numberOfPublications: numberOfPublications == freezed
          ? _value.numberOfPublications
          : numberOfPublications as int,
      publications: publications == freezed
          ? _value.publications
          : publications as List<Publication>,
    ));
  }
}

class _$_TimeLineState implements _TimeLineState {
  _$_TimeLineState(
      {this.status = Status.iddle,
      this.currentPage = 0,
      @required this.numberOfPublications,
      this.publications = const []})
      : assert(status != null),
        assert(currentPage != null),
        assert(numberOfPublications != null),
        assert(publications != null);

  @JsonKey(defaultValue: Status.iddle)
  @override
  final dynamic status;
  @JsonKey(defaultValue: 0)
  @override
  final int currentPage;
  @override
  final int numberOfPublications;
  @JsonKey(defaultValue: const [])
  @override
  final List<Publication> publications;

  bool _didisInitialState = false;
  bool _isInitialState;

  @override
  bool get isInitialState {
    if (_didisInitialState == false) {
      _didisInitialState = true;
      _isInitialState = publications.length == 0 && status == Status.iddle;
    }
    return _isInitialState;
  }

  @override
  String toString() {
    return 'TimeLineState(status: $status, currentPage: $currentPage, numberOfPublications: $numberOfPublications, publications: $publications, isInitialState: $isInitialState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimeLineState &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.numberOfPublications, numberOfPublications) ||
                const DeepCollectionEquality().equals(
                    other.numberOfPublications, numberOfPublications)) &&
            (identical(other.publications, publications) ||
                const DeepCollectionEquality()
                    .equals(other.publications, publications)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(numberOfPublications) ^
      const DeepCollectionEquality().hash(publications);

  @override
  _$TimeLineStateCopyWith<_TimeLineState> get copyWith =>
      __$TimeLineStateCopyWithImpl<_TimeLineState>(this, _$identity);
}

abstract class _TimeLineState implements TimeLineState {
  factory _TimeLineState(
      {dynamic status,
      int currentPage,
      @required int numberOfPublications,
      List<Publication> publications}) = _$_TimeLineState;

  @override
  dynamic get status;
  @override
  int get currentPage;
  @override
  int get numberOfPublications;
  @override
  List<Publication> get publications;
  @override
  _$TimeLineStateCopyWith<_TimeLineState> get copyWith;
}
