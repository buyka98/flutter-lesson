# Хичээл 5 (2023.11.05)
- HomeWork Q&A 10min
## Intro to State Management 40min [here](./state_management.md)
## Model generation with [json_serializable: ^6.7.1](https://pub.dev/packages/json_serializable) 30min    [read more](https://developer.school/tutorials/flutter-using-json_serializable-to-serialise-dart-classes)
  - Introduce current TodoItemModel class 
  - Edit pubspec.yaml
  ```
      json_annotation: 
    dev_dependencies:
      flutter_test:
        sdk: flutter
      flutter_lints: ^2.0.0
      json_serializable: ^6.7.1
      build_runner:
  ```
  - Change Todo Item Model
    ```
    import 'package:json_annotation/json_annotation.dart';
        part 'todo_item_model.g.dart';
        
        @JsonSerializable()
        class TodoItemModel {
          String? userId;
          String? todoId;
          String? detail;
          String? deadline;
          bool isDone;
      
        TodoItemModel({
          this.userId,
          this.todoId,
          this.detail,
          this.deadline,
          this.isDone = false,
        });
      
        factory TodoItemModel.fromJson(Map<String, dynamic> json) => _$TodoItemModelFromJson(json);
      
        Map<String, dynamic> toJson() => _$TodoItemModelToJson(this);
    ```
  - Run ```flutter pub run build_runner watch --delete-conflicting-outputs``` to generate todo_item_model.g.dart
  - Freezed example [medium](https://tomicriedel.medium.com/flutter-freezed-the-complete-crashcourse-c942e9aa2428)
## HTTP Request 20 min
- To make internet request need permission for Android
  ```
  <manifest xmlns:android...>
   ...
     <uses-permission android:name="android.permission.INTERNET" />
     <application ...
  </manifest>
  ```
- HTTP request packages
  - [http: ^1.1.0](https://pub.dev/packages/http): The http package, provided by the Dart team, offers a simple and convenient way to make HTTP requests. It supports GET, POST, PUT, DELETE, and more.
  - [dio: ^5.3.3](https://pub.dev/packages/dio): The dio package is another widely used option for making HTTP requests. It offers more features and flexibility, such as request cancellation and interceptors.
- Send request
  ```
  // Using the `http` package
  import 'package:http/http.dart' as http;
  
  final response = await http.get(Uri.parse('https://api.example.com/data'));
  
  // Using the `dio` package
  import 'package:dio/dio.dart';
  
  final response = await Dio().get('https://api.example.com/data');
  ```
- Handle response
  ```
  if (response.statusCode == 200) {
  print('Request successful: ${response.body}');
  } else {
    print('Request failed with status code: ${response.statusCode}');
  }
  ```
- To see too long response use log with jsonDecode
  ```
  log('Request successful: ${jsonDecode(response.body)}');
  ```

## Local Storage with SharedPreferences 20 min
- [shared_preferences: ^2.2.2](https://pub.dev/packages/shared_preferences)
  ```
  flutter pub add shared_preferences
  ```
- SharedPreferencesDemo widget дээр тайлбарлах
#### How to use it more easily
- Create class for SharedPreferences
  ```
  late Cache cache;
  late SharedPreferences sharedStorage;
  
  class Cache {
    static Cache? _instance;

    // Create instance
    factory Cache() {
      _instance ??= Cache._internal();
      return _instance!;
    }

    // on create instance call _init
    Cache._internal() {
      _init();
    }

    // Shared values
    int count;
  
    // Init function 
     Future<void> _init() async {
      sharedStorage = await SharedPreferences.getInstance();
      count = sharedStorage.getInt('count') ?? 0;
     }

    // get Count data
    getCount(){
      return sharedStorage.getInt('count');
    }

    writeCount(int newCount){
      sharedStorage.setInt('count', newCount);
    }
  ```
- Initialize cache in main.dart
    ```
    void main() async {
      WidgetsFlutterBinding.ensureInitialized();
      Cache cache = Cache();
      runApp(app);
    }
    ```
- Use it in screen ``` cache.getCount()``` ``` cache.writeCount(1)```
    
### Work on Todo app with Bloc 20min

### HomeWork 
create dummy app using dio or http with bloc [dummy api](https://dummy.restapiexample.com)

## Хичээлийн бичлэг Youtube рүү ороод үзээрэй. [Link](https://youtu.be/qupmzh4OZJ4)
