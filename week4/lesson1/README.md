# Хичээл 7 (2023.11.11)
## Homework review 15min

## Notification 2 цаг 

Апп ажилж байгаа, нээлттэй эсвэл хаалттайгаас хамааруулан Notification ирэхэд хийх үйлдлүүд өөр2 байна. Нийт 3 өөр төлөвтэй байна. 
<img width="986" alt="Screenshot 2023-11-09 at 17 55 21" src="https://github.com/buyka98/flutter-lesson/assets/92565391/c8c0b658-123f-4c1a-b936-43db9b266908">

### Push notification with FCM 
  - [Firebase document](https://firebase.google.com/docs/cloud-messaging/flutter/client)
  - [FlutterFire document](https://firebase.flutter.dev/docs/messaging/apple-integration/)

- Add firebase messaging to your app dependency 
```
flutter pub add firebase_messaging
```

- Request permission
```
final notificationSettings = await FirebaseMessaging.instance.requestPermission(provisional: true);
```

- Get notificationo token 
```
final fcmToken = await FirebaseMessaging.instance.getToken();
final apnsToken = await FirebaseMessaging.instance.getAPNSToken();
```

- Test notification
<img width="1019" alt="Screenshot 2023-11-10 at 11 02 43" src="https://github.com/buyka98/flutter-lesson/assets/92565391/74a2fb25-e8d7-4b43-a4af-fb324664f640">



## Profile screen 45min
### Profile screen UI
- Use form
- Show toast
- Show loader

### Connect to Firebase 
- api
- Bloc

## User agent сан танилцуулах 15min
- User agent-г back-end рүү явуулж ямар утас, ямар version ашиглагдаж байгааг харах боломжтой. 


## HomeWork
Өөрсдийн аппын UI болон ажиллагааг тест хийх AppStore, PlayStore оруулахад бэлдэх

## Хичээлийн бичлэг Youtube рүү ороод үзээрэй. [Link](https://youtu.be/qupmzh4OZJ4)
