import 'package:flutter/material.dart';

import 'presentation/pages/userProfilWidget.dart';
import 'presentation/screens/welcome_practis.dart';
import 'presentation/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
       
       return MaterialApp(
        debugShowCheckedModeBanner: false,
          home:welcomePractis() ,
       );
  }

}