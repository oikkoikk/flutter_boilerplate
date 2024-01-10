import '../../domain/models/models.dart';
import '../../domain/repositories/repositories.dart';

class CounterRepositoryLocal implements CounterRepository {
  factory CounterRepositoryLocal() => instance;

  CounterRepositoryLocal._instantiate();

  static final CounterRepositoryLocal instance =
      CounterRepositoryLocal._instantiate();

  @override
  Future<CounterModel> fetch() async {
    return counterModel;
  }

  @override
  CounterModel read() {
    return counterModel;
  }

  @override
  Future<void> update(CounterModel counter) async {}

  static const CounterModel counterModel = CounterModel();
}
