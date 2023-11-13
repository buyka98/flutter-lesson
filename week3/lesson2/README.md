# Хичээл 7 (2023.11.11)
## Homework review 15min

Жишээ код [github](https://github.com/buyka98/alpha23/tree/main/lib/screens/auth)

### Login screen-g bloc ашиглан хийх 

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
