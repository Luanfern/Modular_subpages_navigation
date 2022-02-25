import 'package:flutter_modular/flutter_modular.dart';
import 'package:page_two_module/page_two.dart';

class TwoModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const PageTwo(),
        ),
      ];
}
