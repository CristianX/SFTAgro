import 'package:flutter/material.dart';

import 'package:stfagro/src/pages/login_page.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(42, 193, 126, 1.0)
      ),
      debugShowCheckedModeBanner: false,
      title: 'SFTAgro',
      home: LoginPage(),
      
    );
  }
}