import 'package:flutter_web/material.dart';

class Mail extends StatefulWidget {
  @override
  _MailState createState() => _MailState();
}

class _MailState extends State<Mail> {
  String attachment;

  final _recipientController =TextEditingController(
    text: 'example@example.com',
  );

  final _subjectController =TextEditingController(
    text: 'The subject'
  );
 //merhaba sjkfhkfhskjdf
  final _bodyController=TextEditingController(
    text: 'Mail body'
  );

  final GlobalKey<ScaffoldState> _scaffoldKey=GlobalKey<ScaffoldState>();

  Future<void> send() async {
    final Email email =Email(
      body: _bodyController
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}