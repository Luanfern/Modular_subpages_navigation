import 'package:flutter_modular/flutter_modular.dart';
import 'package:page_one_module/page_one.dart';

class OneModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const PageOne(),
        ),
      ];
}
