import '../../solution1/model/todo.dart';

abstract interface class TodoDataSource {
  Future<Todo> getTodo();
}
