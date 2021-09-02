import 'package:flutter/material.dart';
import 'package:mytodolist/app/core/flavor/flavors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appFlavor!.title),
      ),
      body: Container(),
    );
  }
}
