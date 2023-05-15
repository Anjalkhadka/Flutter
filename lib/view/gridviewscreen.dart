import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class gridviewscreen extends StatelessWidget {
  const gridviewscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('gridviewscreen'),
        centerTitle: true,
        elevation: 0,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(8),
        crossAxisSpacing:8 ,
        mainAxisSpacing: 8,
        crossAxisCount: 2,
        children: const[],
      ),
    );
  }
}