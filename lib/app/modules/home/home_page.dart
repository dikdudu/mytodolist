import 'package:flutter/material.dart';
import 'package:flutter_i18n/widgets/I18nText.dart';
import 'package:mytodolist/app/core/flavor/flavors.dart';
import 'package:mytodolist/app/modules/home/widgets/home_drawer_widget.dart';
import 'package:mytodolist/app/modules/home/widgets/home_filters_widget.dart';
import 'package:mytodolist/app/modules/home/widgets/home_header_widget.dart';
import 'package:mytodolist/app/modules/home/widgets/week_filter_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Theme.of(context).primaryColor,
          ),
          actions: [
            PopupMenuButton(
              icon: Icon(Icons.filter_2),
              itemBuilder: (_) => [
                PopupMenuItem(
                  child: Text("Filtros"),
                )
              ],
            )
          ],
          title: Text(
            appFlavor!.title,
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        drawer: HomeDrawerWidget(),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                  minWidth: constraints.maxWidth,
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HomeHeaderWidget(),
                        HomeFiltersWidget(),
                        WeekFilterWidget(),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
