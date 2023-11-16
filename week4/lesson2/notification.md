## Notification 2 цаг 

Апп ажилж байгаа, нээлттэй эсвэл хаалттайгаас хамааруулан Notification ирэхэд хийх үйлдлүүд өөр2 байна. Нийт 3 өөр төлөвтэй байна. 
<img width="986" alt="Screenshot 2023-11-09 at 17 55 21" src="https://github.com/buyka98/flutter-lesson/assets/92565391/c8c0b658-123f-4c1a-b936-43db9b266908">

<img width="381" alt="Screenshot 2023-11-14 at 12 00 54" src="https://github.com/buyka98/flutter-lesson/assets/92565391/fcf48095-c777-4493-8e7d-2b83a666f7ea">


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
- set foreground notification options 
if alert is set true notification will shown in app
```
      await _firebase.setForegroundNotificationPresentationOptions(
        alert: true,
        badge: false,
        sound: true,
      );
```
- Хэрэглэгч app terminated, background үед ирсэн notification дээр дарсан үед автоматаар app нээгдэх болно. App нээгдэхэд харуулах үйлдлийг энд хийнэ. 
```
      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        String payload0;
        payload0 = jsonEncode(message.data).toString();
        print("payload 222 ${payload0}");
        // todo handleNotification
      });
```
- Foreground notification ирсэнг сонсон үйлдэл хийнэ.
```
 FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        String? payload;
        payload = jsonEncode(message.data).toString();
        RemoteNotification? notification = message.notification;
        if (notification != null) {
         // todo show local notification 
        }
      });
```
### Flutter local notification for foreground notification
[flutter_local_notifications: ^16.1.0](https://pub.dev/packages/flutter_local_notifications)
Android утсан дээр foreground notification харагддаггүй учир flutter_local_notification санг хэрэглэнэ. 
Мөн IOS дээр хэрэглэгчээс хамааран заримдаа foreground notification харагдахгүй байх магадлал байдаг тул ижил local notification харуулах нь үр дүнтэй арга юм. 
```

Future<AndroidNotificationChannel> _initLocalNotification(flutterLocalNotificationsPlugin) async {
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title// description
      importance: Importance.max,
      playSound: true,
      enableVibration: true,
      enableLights: true,
    );
    var androidSettings = const AndroidInitializationSettings('drawable/ic_launcher');
    var iosSettings = const DarwinInitializationSettings(
        requestSoundPermission: true, requestBadgePermission: false, requestAlertPermission: true);
    var initSetttings = InitializationSettings(android: androidSettings, iOS: iosSettings);
    flutterLocalNotificationsPlugin.initialize(initSetttings, onDidReceiveNotificationResponse: (value) {
      print("Recieved local notification $value");
      // todo handle notification
      return;
    });

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    return channel;
}
```
### Test notification from firebase 
[firebase messaging link](https://console.firebase.google.com/u/0/project/proj1021/notification/compose)
<img width="1019" alt="Screenshot 2023-11-10 at 11 02 43" src="https://github.com/buyka98/flutter-lesson/assets/92565391/74a2fb25-e8d7-4b43-a4af-fb324664f640">
