import 'package:fakestagram/model/publication.dart';
import 'package:meta/meta.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'time_line_state.freezed.dart';

enum Status { loading, loaded, iddle }

@freezed
abstract class TimeLineState with _$TimeLineState {
  factory TimeLineState({
    @Default(Status.iddle) status,
    @Default(0) int currentPage,
    @required int numberOfPublications,
    @Default([]) List<Publication> publications,
  }) = _TimeLineState;

  static TimeLineState initial() => TimeLineState(numberOfPublications: 30);

  @late
  bool get isInitialState => publications.length == 0 && status == Status.iddle;
}

extension TimelineStateX on TimeLineState {
  bool hasReachedEnd(int pageSize) =>
      (currentPage * pageSize) == numberOfPublications - 1;
}
