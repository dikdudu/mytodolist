import 'package:flutter_modular/flutter_modular.dart';
import 'package:mytodolist/app/modules/home/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => HomePage(),
        )
      ];
}
