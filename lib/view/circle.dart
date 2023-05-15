// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_app/model/arithmetic.dart';

// class Circle extends StatefulWidget {
//   const Circle({super.key});

//   @override
//   State<Circle> createState() => _CircleState();
// }

// class _CircleState extends State<Circle> {
//   int radius = 0;
//   double areaOfcircle= 0;
 
//  late Arithmetic arithmetic;

//  void area(){
//   arithmetic = Arithmetic();
//   setState(() {
//     areaOfcircle = arithmetic.area(radius);
//   });
//  }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text ("Area of Circle"),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding:const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               const SizedBox(height: 8,),
//               TextField(
//                 onChanged: (value){
//                   radius =int.parse(value);
//                 },
//                 decoration: InputDecoration(
//                   hintText: 'Enter Radius',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     area();
//                   },
//                   child: const Text('Area'),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               Text(
//                 'Area is : $areaOfcircle',
//                 style: const TextStyle(
//                   fontSize: 20,
//                   fontStyle: FontStyle.italic,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//             ),
//           ),
//           ),
//       );
//   }
// }