import 'package:flutter/material.dart';

class MediaQueryView extends StatefulWidget {
  const MediaQueryView({super.key});

  @override
  State<MediaQueryView> createState() => _MediaQueryViewState();
}

class _MediaQueryViewState extends State<MediaQueryView> {
  showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green,
        content: Text(message),
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Media Query View"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              height: MediaQuery.of(context).size.height * .60,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.red),
              child: ElevatedButton(
                onPressed: () {
                  showSnackBar(context, 'Add');
                },
                child: const Text('click me'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              // height: MediaQuery.of(context).size.height * .20,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.blue),
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('subtract'),
                      duration: Duration(seconds: 3),
                    ),
                  );
                },
                child: const Text('click me'),
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              height: 20,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.blue),
              child: const Text("third container"),
            ),
          ),
        ],
      ),
    );
  }
}
