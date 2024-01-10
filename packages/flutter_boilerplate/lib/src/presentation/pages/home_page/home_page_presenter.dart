import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/repositories.dart';
import '../../../domain/models/models.dart';
import '../../../domain/use_cases/use_cases.dart';
import 'home_page_view_model.dart';

part 'home_page_presenter.g.dart';

@riverpod
class HomePagePresenter extends _$HomePagePresenter {
  @override
  HomePageViewModel build() {
    return const HomePageViewModel();
  }

  final IncrementCounterUseCase incrementCounterUseCase =
      IncrementCounterUseCase(
    counterRepository: CounterRepositoryLocal(),
  );

  Future<void> incrementCounter(HomePageViewModel viewModel) async {
    final CounterModel updatedCounter =
        await incrementCounterUseCase(viewModel.counter);
    state = state.copyWith(counter: updatedCounter);
  }
}
