import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'time_line_event.freezed.dart';

@freezed
abstract class TimeLineEvent with _$TimeLineEvent {
  const factory TimeLineEvent.loadContent() = LoadContentTimeLineEvent;
}
