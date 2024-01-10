import '../../data/repositories/repositories.dart';
import '../models/counter_model.dart';

class fetchCounterUseCase {
  fetchCounterUseCase(this.counterRepository);

  final CounterRepositoryLocal counterRepository;

  Future<CounterModel> call() async {
    final CounterModel counter = await counterRepository.fetch();
    return counter;
  }
}
