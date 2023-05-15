import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RichTextView extends StatelessWidget {
  const RichTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RichText(
        text: const TextSpan(
        text: 'My',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
        children: <TextSpan>[
          TextSpan(
            text: 'name',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.amber,
            ),
          ),
          TextSpan(
            text: 'isAnjal!',

          ),
        ],

      ),

    ));
//       body: Container(
//         color: Colors.blue,
//         width: double.infinity,
        
//         child: Text(
//           'My name is Anjal',
//           style: TextStyle(
//             fontSize: 24.0,
//             color: Colors.red,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
  }
 }
