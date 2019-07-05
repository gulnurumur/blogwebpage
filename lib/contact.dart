import 'package:flutter_web/material.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  TextEditingController userName = TextEditingController();
  TextEditingController message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Image.network("", width: 100),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                width: 450,
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: TextField(
                    controller: userName,
                    decoration: InputDecoration(
                        labelText: "Tell me your name:",
                        labelStyle: TextStyle(
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                width: 450,
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: TextField(
                    controller: message,
                    decoration: InputDecoration(
                        labelText: "What is your message:",
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ),
            Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFFC86DD7), Color(0xFF3023AE)],
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF6078ea).withOpacity(.3),
                              offset: Offset(0, 8),
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: GestureDetector( //tıklanıldığında çalışacak part.
                            onTap: () {
                             // Navigator.push(context, MaterialPageRoute(
                              //  builder: (context)=>Contact(),
                             // ));
                            },
                            child: Center(
                              child: Text(
                                "Send ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    
                                    color: Colors.white,
                                    fontSize: 15,
                                    letterSpacing: 1,
                                    fontFamily: "Montserrat-Regular"),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
