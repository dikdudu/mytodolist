import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';

class WeekFilterWidget extends StatelessWidget {
  const WeekFilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("DIA DA SEMANA"),
        SizedBox(height: 10),
        DatePicker(
          DateTime.now(),
          locale: 'pt_BR',
          initialSelectedDate: DateTime.now(),
          selectionColor: Theme.of(context).primaryColor,
          selectedTextColor: Colors.white,
          daysCount: 7,
          // monthTextStyle: TextStyle(fontSize: 8),
          // dayTextStyle: TextStyle(fontSize: 13),
          // dateTextStyle: TextStyle(fontSize: 13),
        ),
      ],
    );
  }
}
