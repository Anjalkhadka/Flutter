import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  Widget sized(String s) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        color: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          s,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card VIew"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return sized(index.toString());
        },
        // child: Column(
        //   children: <Widget>[
        //     GestureDetector(
        //       onTap: () {
        //         ScaffoldMessenger.of(context).showSnackBar(
        //           const SnackBar(
        //             content: Text('Student added succesfully'),
        //             duration: Duration(seconds: 2),
        //             backgroundColor: Colors.green,
        //             behavior: SnackBarBehavior.floating,
        //           ),
        //         );
        //       },
        //     ),
        //     sized("Card View"),

        //     // for (var i = 0; i < 9; i++) sized("i am insdie card $i"),
        //   ],
        // ),
      ),
    );
  }
}