import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/models.dart';

part 'home_page_view_model.freezed.dart';

@freezed
class HomePageViewModel with _$HomePageViewModel {
  const factory HomePageViewModel({
    @Default(CounterModel()) CounterModel counter, 
  }) = _HomePageViewModel;

  const HomePageViewModel._();
}
