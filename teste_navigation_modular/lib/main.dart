import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:navigation_topics_module/navigation_topics_module.dart';
import 'package:page_one_module/page_one_module.dart';
import 'package:page_three_module/page_three_modular.dart';
import 'package:page_two_module/page_two_modular.dart';

void main() {
  return runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/page1');

    return MaterialApp.router(
      title: 'My Smart App',
      theme: ThemeData(primarySwatch: Colors.blue),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const HomePage(), children: [
      ModuleRoute('/page1', module: OneModule()),
      ModuleRoute('/page2', module: TwoModule()),
      ModuleRoute('/page3', module: ThreeModule()),      
    ]),
  ];
  
   @override
  List<Module> get imports => [
        NavigationModule()
      ];
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Column(
        children: [
          const NavigatorTopics(),
          Container(width: 2, color: Colors.black45),
          const Expanded(child: RouterOutlet()),
        ],
      ),
    );
  }
}

class InternalPage extends StatelessWidget {
  final String title;
  final Color color;
  const InternalPage({Key? key, required this.title, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      child: Center(child: Text(title)),
    );
  }
}