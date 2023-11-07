# Хичээл 6 (2023.11.07)
## Login screen UI 20min
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

## Login with Firebase phone authentication 20min

## 1 хэрэглэгч 1 утас арга 20min

## Өмнөхөө бататгах асуулт хариулт 60min

## HomeWork
Remember me feature [shared_preferences: ^2.2.2](https://pub.dev/packages/shared_preferences) сан ашиглан хийх

## Хичээлийн бичлэг Youtube рүү ороод үзээрэй. [Link](https://youtu.be/qupmzh4OZJ4)
