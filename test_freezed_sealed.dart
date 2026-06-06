import 'package:freezed_annotation/freezed_annotation.dart';
part 'test_freezed_sealed.freezed.dart';
@freezed
sealed class TestFreezed with _$TestFreezed {
  const factory TestFreezed() = _TestFreezed;
}
