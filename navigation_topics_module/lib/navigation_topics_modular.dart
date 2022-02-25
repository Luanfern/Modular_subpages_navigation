import 'package:flutter_modular/flutter_modular.dart';
import 'package:navigation_topics_module/navigation_topics_module.dart';

class NavigationModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const NavigatorTopics(),
        ),
      ];
}
