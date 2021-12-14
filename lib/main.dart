import 'package:flutter/material.dart';
import 'package:the_movie_db/di/di.dart';
import 'package:the_movie_db/main_theme_data.dart';
import 'package:the_movie_db/modules/authorization/authorization_widget.dart';
import 'package:get_it/get_it.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "The movie DB",
      theme: lightTheme,
      themeMode: ThemeMode.light,
      home: AuthorizationWidget(),
    );
  }
}
