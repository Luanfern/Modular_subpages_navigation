import 'package:flutter_modular/flutter_modular.dart';
import 'package:page_three_module/page_three.dart';

class ThreeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const PageThree(),
        ),
      ];
}
