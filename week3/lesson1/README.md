# Хичээл 6 (2023.11.07)
## Login screen UI 40min
 - Read about forms & input [here](https://docs.flutter.dev/cookbook/forms/text-input)
 - Draw below UI using flutter

<img src = "https://github.com/buyka98/flutter-lesson/assets/92565391/3baf15d8-e974-4a2c-8262-55326c504045" width = 200>
<img src = "https://github.com/buyka98/flutter-lesson/assets/92565391/6e716ee5-82fd-49a2-bc24-a1513fc58e02" width = 200>
<img src = "[https://github.com/buyka98/flutter-lesson/assets/92565391/b1bf4e83-7d6c-4521-a1b6-6523851c0320](https://github.com/buyka98/flutter-lesson/assets/92565391/023dc308-9207-43c8-89e7-21bd2887f1eb)" width = 200>

#### Some help for the UI
- We can set TextFormField's decoration in main.dart
   ```
    theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            // TextFormField decoration
            inputDecorationTheme: const InputDecorationTheme(
              labelStyle: TextStyle(color: Colors.blueGrey),
              floatingLabelStyle: TextStyle(color: Colors.black),
              border: OutlineInputBorder(),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.redAccent,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.redAccent,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.blueAccent,
                ),
              ),
            ))
   ```
- TextFormField example 
 ```
                        TextFormField(
                         // controller contains email's value
                         controller: emailController,
                         // set keyboard type such as phone, number, password
                         keyboardType: TextInputType.emailAddress,
                         autovalidateMode: AutovalidateMode.onUserInteraction,
                         decoration: InputDecoration(
                           labelText: "Enter email",
                         ),
                         onFieldSubmitted: (value) {
                           print("done $value");
                         },
                         // We can show error message depending on it's value
                         validator: (value) {
                           if (value == null || value.isEmpty) {
                             return "Please enter a email address";
                           } else {
                             return null;
                           }
                         },
                       ),
 ```

## 1 хэрэглэгч 1 утас арга 10min
- Mobile token

## Өмнөхөө бататгах асуулт хариулт 30min
- Bloc
- Firebase

## Login using firebase auth 40min

### Firebase codes

- Firebase Register with email & password 
```
final credential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
```
- Firebase Login with email & password
```
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
```
- Firebase Logout 
```
      await auth.signOut();
```

### Bloc codes 

- Auth states
```
class AuthLoading extends AuthState {}

class AuthFailed extends AuthState {
  final String? error;
  AuthFailed({this.error});
}

class RegisterSuccess extends AuthState {}

class LoginSuccess extends AuthState {}

class LogOutSuccess extends AuthState {}
```
- We can access auth_cubit globally by creating it's privider in main.dart
```
BlocProvider(
      create: (context) => AuthCubit(),
      child: MaterialApp()
      );
```
- By using blocBuilder we can decide what screen to show depending on authState
```
      BlocBuilder(
        bloc: context.watch<AuthCubit>(),
        builder: (context, AuthState state) {
          if (state is RegisterSuccess || state is LoginSuccess) {
            return mainScreen();
          } else if (state is AuthLoading) {
            return LoadingScreen();
          } else {
            return LoginScreen();
          }
        });
```

## HomeWork
Remember me feature [shared_preferences: ^2.2.2](https://pub.dev/packages/shared_preferences) сан ашиглан хийх

## Хичээлийн бичлэг Youtube рүү ороод үзээрэй. [Link](https://youtu.be/qupmzh4OZJ4)
