import 'package:flutter/material.dart';
import 'package:halol_farm/route/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DemosignIn_or_singUp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/verif_code',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (s) => RouteGenerator.generateRoute(s),
    );
  }
}

