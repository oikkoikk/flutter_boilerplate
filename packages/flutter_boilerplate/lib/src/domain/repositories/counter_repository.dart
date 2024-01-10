import '../models/models.dart';

abstract class CounterRepository {
  Future<CounterModel> fetch();
  CounterModel read();
  Future<void> update(CounterModel counter);
}
