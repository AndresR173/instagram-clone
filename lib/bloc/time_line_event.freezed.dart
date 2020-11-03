// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'time_line_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TimeLineEventTearOff {
  const _$TimeLineEventTearOff();

// ignore: unused_element
  LoadContentTimeLineEvent loadContent() {
    return const LoadContentTimeLineEvent();
  }
}

// ignore: unused_elementF
const $TimeLineEvent = _$TimeLineEventTearOff();

mixin _$TimeLineEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadContent(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadContent(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadContent(LoadContentTimeLineEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadContent(LoadContentTimeLineEvent value),
    @required Result orElse(),
  });
}

abstract class $TimeLineEventCopyWith<$Res> {
  factory $TimeLineEventCopyWith(
          TimeLineEvent value, $Res Function(TimeLineEvent) then) =
      _$TimeLineEventCopyWithImpl<$Res>;
}

class _$TimeLineEventCopyWithImpl<$Res>
    implements $TimeLineEventCopyWith<$Res> {
  _$TimeLineEventCopyWithImpl(this._value, this._then);

  final TimeLineEvent _value;
  // ignore: unused_field
  final $Res Function(TimeLineEvent) _then;
}

abstract class $LoadContentTimeLineEventCopyWith<$Res> {
  factory $LoadContentTimeLineEventCopyWith(LoadContentTimeLineEvent value,
          $Res Function(LoadContentTimeLineEvent) then) =
      _$LoadContentTimeLineEventCopyWithImpl<$Res>;
}

class _$LoadContentTimeLineEventCopyWithImpl<$Res>
    extends _$TimeLineEventCopyWithImpl<$Res>
    implements $LoadContentTimeLineEventCopyWith<$Res> {
  _$LoadContentTimeLineEventCopyWithImpl(LoadContentTimeLineEvent _value,
      $Res Function(LoadContentTimeLineEvent) _then)
      : super(_value, (v) => _then(v as LoadContentTimeLineEvent));

  @override
  LoadContentTimeLineEvent get _value =>
      super._value as LoadContentTimeLineEvent;
}

class _$LoadContentTimeLineEvent implements LoadContentTimeLineEvent {
  const _$LoadContentTimeLineEvent();

  @override
  String toString() {
    return 'TimeLineEvent.loadContent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadContentTimeLineEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadContent(),
  }) {
    assert(loadContent != null);
    return loadContent();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadContent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadContent != null) {
      return loadContent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadContent(LoadContentTimeLineEvent value),
  }) {
    assert(loadContent != null);
    return loadContent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadContent(LoadContentTimeLineEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadContent != null) {
      return loadContent(this);
    }
    return orElse();
  }
}

abstract class LoadContentTimeLineEvent implements TimeLineEvent {
  const factory LoadContentTimeLineEvent() = _$LoadContentTimeLineEvent;
}
