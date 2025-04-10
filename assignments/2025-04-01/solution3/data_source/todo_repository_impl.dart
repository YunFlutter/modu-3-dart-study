import '../../../2025-04-01/solution3/data_source/todo_data_source.dart';
import '../../../2025-04-01/solution3/model/todo.dart';
import 'todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoDataSource _todoDataSource;

  @override
  Future<List<Todo>> getCompletedTodos() async {
    final List<Map<String, dynamic>> fetchData =
        await _todoDataSource.fetchData();

    List<Todo> todoList = [];

    for (Map<String, dynamic> items in fetchData) {
      if (items["completed"]) {
        todoList.add(Todo.fromMap(items));
      }
    }

    return todoList;
  }

  @override
  Future<List<Todo>> getTodos() async {
    final List<Map<String, dynamic>> fetchData =
        await _todoDataSource.fetchData();

    List<Todo> todoList = [];

    for (Map<String, dynamic> items in fetchData) {
      todoList.add(Todo.fromMap(items));
    }

    return todoList;
  }

  TodoRepositoryImpl({required TodoDataSource todoDataSource})
    : _todoDataSource = todoDataSource;
}
