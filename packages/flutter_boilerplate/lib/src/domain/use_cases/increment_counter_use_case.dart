import '../../data/repositories/repositories.dart';
import '../models/counter_model.dart';

class IncrementCounterUseCase {
  IncrementCounterUseCase(this.counterRepository);

  final CounterRepositoryLocal counterRepository;

  Future<CounterModel> call() async {
    final CounterModel counter = await counterRepository.fetch();
    final CounterModel newCounter = CounterModel(value: counter.value + 1);
    await counterRepository.update(newCounter);
    return newCounter;
  }
}
