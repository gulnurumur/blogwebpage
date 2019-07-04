import 'package:flutter_web/material.dart';

class ResponsiveLayout extends StatelessWidget {
  //Üç adet ekran boyutum olacak bunun için üç tane widget tipinde değişken tanımladım.
  final Widget largeScreen; 
  final Widget mediumScreen; 
  final Widget smallScreen;
//Tanımladığım bu değişkenlerin constructerlarını tanımlamak zorundayım.çünkü bunlardan bir metod oluşturacağım.
  const ResponsiveLayout(
      {Key key,
      @required this.largeScreen,
      this.mediumScreen,
      this.smallScreen})
      : super(key: key);
//ekranımın boyutu 800'den küçükse çalışacak metod.
  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }
//ekranımın boyutu 800 ve 1200 arasında ise çalışacak metod
  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1200;
  }
//ekranımın boyutu 800'den büyükse çalışacak metot 
  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) { //eğer ekranboyutu 800den büyükse largescreen metoduna git.
          return largeScreen;
        } else if (constraints.maxWidth < 1200 && constraints.maxWidth > 800) { //mediumscreen veya large screen 
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen; //smallscreen veya largescreen 
        }
      },
    );
  }
}
