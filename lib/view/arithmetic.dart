import 'package:flutter/material.dart';

import '../model/arithmetic.dart';

class ArthmeticView extends StatefulWidget {
  const ArthmeticView({super.key});

  @override
  State<ArthmeticView> createState() => _ArthmeticViewState();
}

class _ArthmeticViewState extends State<ArthmeticView> {
  final principalcontroller = TextEditingController();
  final ratecontroller = TextEditingController();
  final timecontroller = TextEditingController();
  double result = 0;
  late Arithmetic arithmetic;

  @override
  void initState() {
    principalcontroller.text = '67';
    ratecontroller.text = '89';
    timecontroller.text = '76';
    

    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    principalcontroller.dispose();
    ratecontroller.dispose();
    timecontroller.dispose(); // TODO: implement dispose
    super.dispose();
  }

  void simpleinterest() {
    arithmetic = Arithmetic();
    setState(() {
      result = arithmetic.simpleinterest(
        double.parse(principalcontroller.text),
        double.parse(ratecontroller.text),
        double.parse(ratecontroller.text),
      );
    });
    Navigator.pushNamed(
      context,
      '/outputRoute',
      arguments: result,
    );
  }

  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Interest"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: myKey,
            child: Column(children: [
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                  controller: principalcontroller,
                  decoration: InputDecoration(
                      labelText: "Enter principle",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter principle';
                    }
                    return null;
                  }),
              const SizedBox(height: 8),
              TextFormField(
                  controller: timecontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Enter Time",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter the time';
                    }
                    return null;
                  }),
              const SizedBox(height: 8),
              TextFormField(
                  controller: ratecontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Enter Rate",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter rate';
                    }
                    return null;
                  }),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (myKey.currentState!.validate()) {
                      simpleinterest();
                    }
                    simpleinterest();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 97, 161, 234),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                  child: const Text(
                    "Calculate",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "The simple interest is $result",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
