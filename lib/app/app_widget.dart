import 'package:flutter/material.dart';
import 'package:mytodolist/app/core/flavor/flavors.dart';
import 'package:mytodolist/app/modules/home/home_page.dart';

void initApp(Flavor flavor) {
  appFlavor = flavor;
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appFlavor!.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
