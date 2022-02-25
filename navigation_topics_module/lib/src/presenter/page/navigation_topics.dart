import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NavigatorTopics extends StatelessWidget {
  const NavigatorTopics({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: Column(
        children: [
          ListTile(
            title: const Text('Page 1'),
            onTap: () => Modular.to.navigate('/page1'),
          ),
          ListTile(
            title: const Text('Page 2'),
            onTap: () => Modular.to.navigate('/page2'),
          ),
          ListTile(
            title: const Text('Page 3'),
            onTap: () => Modular.to.navigate('/page3'),
          ),
        ],
      ),
    );
  }
}