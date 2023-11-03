# Introduction to State Management
## What is State Management
 - Аппын state-с хамааран UI өөрчлөгдөнө.
 - State-г яаж хадгалж яаж өөрчлөхийг зохицуулахыг State Management гэнэ.
   ```
   setState((){});
   ```
<img width="676" alt="Screenshot 2023-11-03 at 14 17 20" src="https://github.com/buyka98/flutter-lesson/assets/92565391/77f03310-6906-4422-a73d-17786c5e8ad8">

- State management-н жишээнүүд 
  - **setState** Тухайн 1 widget доторх state-г өөрчилнө.setState-г дуудсанаар тухайн widget болон түүний хүүхдүүд дахин зурагдана.
    
  - **inheritedWidget** - г ашиглан хүүхдүүд нь дундаа 1 state ашиглах боломжтой болно.
    .of(context) гэсэн бичиглэлтэй. Доорх бичиглэлүүд inheritedWidget суурьтай. [Inherited widget Бичлэг үзэх](https://www.youtube.com/watch?v=utrvu-eow6U)
    - MediaQuery.of(context)
    - Theme.of(context)
    - Provider.of(context) - provider сан 
  <img width="874" alt="Screenshot 2023-11-03 at 16 38 57" src="https://github.com/buyka98/flutter-lesson/assets/92565391/257025bf-5ba5-4eea-bf02-d5ec8bb4504b">
  
  - **Provider** InheritedWidget-г ашиглан бичигдсэн сан.  [provider: ^6.0.5](https://pub.dev/packages/provider). ```Provider.of<T>(context)```-г ашиглан эцэг Provider-луугаа ханддаг [provider жишээ код](https://github.com/buyka98/provider_example)
    
  - **Bloc(Business Logic Component)** UI болон логикийг тус тусад нь бичихэд зориулагдсан Bloc Design Pattern. Энэхүү дизайн-г [flutter_bloc: ^8.1.3](https://pub.dev/packages/flutter_bloc) сангаар дамжуулан flutter-т ашиглана. Комплекс апп хийхэд хэрэглэхэд тохиромжтой. [Bloc жишээ код](https://github.com/buyka98/bloc_example)
    
  - **Redux** [flutter_redux: ^0.10.0](https://pub.dev/packages/flutter_redux) Redux ашиглах боломжтой.
    
  - **Getx** [get: ^4.6.6](https://pub.dev/packages/get) State management, Navigation бүгд нэг дор байгаа сан.
    
  - **Riverpod** [flutter_riverpod: ^2.4.5](https://pub.dev/packages/flutter_riverpod) Provider дээр суурилсан.
    
  - Provider болон Bloc - н бичиглэлд байгаа context.watch vs Provider.of - н [тайлбар](https://github.com/felangel/bloc/issues/1902#issuecomment-723664125) 
