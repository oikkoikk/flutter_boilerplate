import '../../data/repositories/repositories.dart';
import '../models/models.dart';
import 'use_case.dart';

class IncrementCounterUseCase
    implements UseCase<Future<CounterModel>, CounterModel> {
  IncrementCounterUseCase({required this.counterRepository});

  final CounterRepositoryLocal counterRepository;

  @override
  Future<CounterModel> call(CounterModel counter) async {
    final CounterModel updatedCounter = counter.copyWith(
      value: counter.value + 1,
    );
    await counterRepository.update(updatedCounter);
    return updatedCounter;
  }
}
