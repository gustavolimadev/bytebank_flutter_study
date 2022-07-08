import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';




// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, use_key_in_widget_constructors

void main() {
  runApp(ByteBankApp());
}

class ByteBankApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.green[900],
            appBarTheme: AppBarTheme(color: Colors.green[900]),
            colorScheme: ColorScheme
                .fromSwatch()
                .copyWith(secondary: Colors.blueAccent[700]),
            buttonTheme: ButtonThemeData(
              buttonColor: Colors.blueAccent[700],
              textTheme: ButtonTextTheme.primary,
            )
        ),
        home: Dashboard(),

      );
  }
}


