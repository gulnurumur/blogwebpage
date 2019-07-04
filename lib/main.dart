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
/*
-Image ekle sol ortaya 
-Im a coder yazısının altına bir buton 'Contact' butonu.tıklanıldığında benim mail adresim sabit
olacak bana bir kullanıcı adı veya isim belirterek mailime herhangi bir yazı gönderebilsin.(veya dosya)
-'About,Skills,Blog' kısımları tıklanıldığında hepsi için sayfayı yenilesin ve yenilenen sayfada;
About kısmında : Benim hakkımda kısmı , kendimden bahsettiğim şeyler , fotoğraf veya videolar,ilgi alanlarım..
Skills kısmında: yeteneklerim ve yaptığım projeler
Blog kısmında : Kendi yazılarım ...
*/