import 'package:flutter/material.dart';

class HomeHeaderWidget extends StatefulWidget {
  const HomeHeaderWidget({Key? key}) : super(key: key);

  @override
  _HomeHeaderWidgetState createState() => _HomeHeaderWidgetState();
}

class _HomeHeaderWidgetState extends State<HomeHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            "E ai Eduardo Santos!",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
