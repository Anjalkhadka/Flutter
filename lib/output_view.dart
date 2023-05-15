import 'package:flutter/material.dart';

class Output_view extends StatefulWidget {
  const Output_view({super.key});

  @override
  State<Output_view> createState() => _OutputState();
}

class _OutputState extends State<Output_view> {
  double? result;
  @override
  void didChangeDependencies() {
    result = ModalRoute.of(context)!.settings.arguments as double?;
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('output'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Text('The reasult is, ${result.toString()}'),
      ),
    );
    ;
  }
}
