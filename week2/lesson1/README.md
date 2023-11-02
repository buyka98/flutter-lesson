# Хичээл 4 (2023.10.31)
- clone todo app [here](https://github.com/buyka98/alpha23)
- Firebase setup
  - install firebase CLI [link](https://firebase.google.com/docs/cli#mac-linux-auto-script)
  - Login into firebase by CLI
    ```
    firebase login
    ```
  - activate CLI
    ```
    dart pub global activate flutterfire_cli
    ```
   - Add firebase to your app
     ```
     flutter pub add firebase_core
     flutterfire configure
     ```
    - Activate unanonymous sign in [configure link](https://firebase.google.com/docs/auth/flutter/start)
    - Add firestore to your app [link](https://firebase.flutter.dev/docs/firestore/usage/)
## TODO APP CRUD WITH FIREBASE
#### auth хийхгүй firestore луу хандахад алдаа гарвал anonymous auth-г хийх
- Доорх талбаруудыг үүсгэх. Ийм талбартай модел үүсгэн fromJson toJson method-уудыг ашиглан датаны CRUD үйлдэлтэй танилцах
<img width="319" alt="Screenshot 2023-11-02 at 22 45 48" src="https://github.com/buyka98/flutter-lesson/assets/92565391/d128a255-b1fe-405a-891f-44699faf03ae">

- Model [жишээ]([lib/models/todo_item_model.dart](https://github.com/buyka98/alpha23/blob/main/lib/models/todo_item_model.dart)https://github.com/buyka98/alpha23/blob/main/lib/models/todo_item_model.dart)

-  Add todo
  ```
 CollectionReference collection = FirebaseFirestore.instance.collection("todo");
                    TodoItemModel todo = TodoItemModel(
                      userId: (await FirebaseAuth.instance.currentUser?.uid),
                      todoId: collection.doc().id,
                      deadline: dateController.text,
                      detail: todoController.text,
                    );
                    collection.add(todo.toJson()).then((value) => print("value $value"));
  ```
- Edit todo
  ```
  TodoItemModel newTodo = widget.todo.copyWith(deadline: dateController.text, detail: todoController.text);
  collection.doc(widget.docId).update(newTodo.toJson());
  ```
- Delete todo
  ```
  collection.doc(widget.docId).delete();
  ```
- Show Data
  ```
  StreamBuilder<QuerySnapshot>(
            stream: collection.snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasData) {
                // todo implement listview
                return ListView.builder...;
              } else {
                return Text("No Data");
              }
  ```

