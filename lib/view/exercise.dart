import 'package:flutter/material.dart';

class exercise extends StatefulWidget {
  const exercise({super.key});

  @override
  State<exercise> createState() => _exerciseState();
}

class _exerciseState extends State<exercise> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * .5;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercise"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  width: double.infinity,
                  height: height * .1,
                  color: Colors.amber,
                ),
              ),
              Expanded(
                // fit: FlexFit.tight,
                child: Container(
                  width: double.infinity,
                  height: height * .1,
                  color: Colors.green,
                ),
              ),
              Expanded(
                // fit: FlexFit.tight,
                child: Container(
                  width: double.infinity,
                  height: height * .1,
                  color: Colors.red,
                ),
              ),
              // Container(
              //   width: double.infinity,
              //   height: height * .33,
              //   color: Colors.blueGrey,
              // )
            ],
          ),
          Column(children: [
            Container(
              width: double.infinity,
              height: height * .1,
              color: Colors.blue,
            ),
          ]),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.black87,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.green,
              ),
            ],
          )
        ],
      ),
    );
  }
}
