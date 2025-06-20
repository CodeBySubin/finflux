import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_event.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.changeIndex(int index) = ChangeIndex;
  const factory HomeEvent.changeSliderIndex(int index) = ChangeSlideIndex;
}
