import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 0, 161, 73),
      child: const Center(
        child: Text('Page Three'),
      ),
    );
  }
}