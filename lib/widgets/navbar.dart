import 'package:blogwebpage/utils/responsive.dart';
import 'package:flutter_web/material.dart';

class NavBar extends StatelessWidget {
  //Bu class yukarı alandaki nesneler için..
  //Responsive classımı import ettim çünkü bütün ekran boyutları için tasarımı yapmalıyım bunun için if kullandım.
  final navLinks = ["About Me", "Skills", "Blog","Language"]; //Array 

  List<Widget> navItem() {
    return navLinks.map((text) {
      return Padding(
        padding: EdgeInsets.only(left: 18),
        child: Text(text, style: TextStyle(fontFamily: "Montserrat-Bold",color: Colors.white)),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(//buton oluşturmak için.
                    borderRadius: BorderRadius.circular(18),
                    gradient: LinearGradient(colors: [ //buton için renk geçişi.
                      Color(0xFFC86DD7),
                      Color(0xFF3023AE),
                    ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
                child: Center(
                  child: Text("",
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text("GU", style: TextStyle(fontSize: 26,color: Colors.white))
            ],
          ),
          if (!ResponsiveLayout.isSmallScreen(context)) 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[...navItem()]..add(InkWell(
                    child: Container(
                  margin: EdgeInsets.only(left: 20),
                  width: 120,
                  height: 40,
                 /* decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFFC86DD7), Color(0xFF3023AE)],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF6078ea).withOpacity(.3),
                            offset: Offset(0, 8),
                           blurRadius: 8)
                      ]),
                  child: Material(
                    color: Colors.transparent,
                    child: Center(
                      child: Text("Contact",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: 1,
                              fontFamily: "Montserrat-Bold")),
                    ),
                 ), */
                ),
                ),
                ),
            )
          else
            Image.network("assets/menu.png", width: 26, height: 26) 
            //web adlı klasörün içine assets adlı bir klasör oluşturdum. Bu klasörüm içine kullanmak istediğim image attım.
            //Bir image bu şekilde kullanmak istiyorsam Image.network kullanmam gerek. 
            //Image =>network,asset,memory 
        ],
      ),
    );
  }
}
