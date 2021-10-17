import 'package:flutter/material.dart';
import 'package:mytodolist/app/core/themes/app_theme.dart';
import 'package:mytodolist/app/modules/home/widgets/todo_card_field_widget.dart';

class HomeFiltersWidget extends StatelessWidget {
  const HomeFiltersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "FILTROS",
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              TodoCardFieldWidget(label: "Hoje"),
              TodoCardFieldWidget(label: "Amanhã"),
              TodoCardFieldWidget(label: "Semana"),
            ],
          ),
        ),
      ],
    );
  }
}
