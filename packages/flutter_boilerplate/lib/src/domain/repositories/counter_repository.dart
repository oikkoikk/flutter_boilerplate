import '../models/models.dart';

abstract class CounterRepository {
  Future<CounterModel> fetch();
  Future<void> update(CounterModel counter);
}
