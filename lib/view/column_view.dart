import 'package:flutter/material.dart';

class column_view extends StatelessWidget {
  const column_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(children: const [
            Icon(
              Icons.star,
              size: 50,
              color: Colors.purple,
            ),
            Icon(
              Icons.star,
              size: 30,
              color: Colors.green,
            ),
          ]),
          Row(children: const [
            Icon(
              Icons.star,
              size: 50,
              color: Colors.purple,
            ),
            Icon(
              Icons.star,
              size: 30,
              color: Colors.green,
            ),
          ]),
        ],
      ),
    );
  }
}
