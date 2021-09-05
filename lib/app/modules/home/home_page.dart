import 'package:flutter/material.dart';
import 'package:flutter_i18n/widgets/I18nText.dart';
import 'package:mytodolist/app/core/flavor/flavors.dart';
import 'package:mytodolist/app/modules/home/widgets/home_drawer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appFlavor!.title,
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      drawer: HomeDrawerWidget(),
      body: Center(
        child: Column(
          children: [
            I18nText("common.title"),
          ],
        ),
      ),
    );
  }
}
