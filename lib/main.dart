import 'package:blogwebpage/home.dart';
import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlogHome(),
    );
  }
}
//Excepted a value of type 'MaterialColor' , but got one of the type 'Color' => error


//flutter pub global activate webdev => aktif et.
//flutter pub global run webdev serve => çalıştır.