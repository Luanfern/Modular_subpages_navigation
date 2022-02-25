import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Center(
        child: Text('Page One'),
      ),
    );
  }
}