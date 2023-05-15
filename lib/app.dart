import 'package:flutter/material.dart';
import 'package:flutter_app/output_view.dart';
import 'package:flutter_app/view/arithmetic.dart';
import 'package:flutter_app/view/cardview.dart';
import 'package:flutter_app/view/classworkview.dart';
import 'package:flutter_app/view/column_view.dart';
import 'package:flutter_app/view/dashboard.dart';
import 'package:flutter_app/view/exercise.dart';
import 'package:flutter_app/view/gridviewscreen.dart';
import 'package:flutter_app/view/loadimage.dart';
import 'package:flutter_app/view/media_query_view.dart';
import 'package:flutter_app/view/name_change_person.dart';
import 'package:flutter_app/view/rich_text_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardView(),
        '/arithmeticRoute': (context) => const ArthmeticView(),
        // '/Areaofcircle': (context) => const Circle(),
        '/ChangeName': (context) => const MyNameChange(),
        '/rich_text_view': (context) => const RichTextView(),
        '/column_view': (context) => const column_view(),
        '/output_view': (context) => const Output_view(),
        // '/container_view': (context) => const container_view(),
        '/loadimage': (context) => const LoadImageView(),
        '/media_query_view': (context) => const MediaQueryView(),
        '/exerciseRoute': (context) => const exercise(),
        '/classworkview': (context) => const ClassworkView(),
        '/cardview': (context) => const CardView(),
        '/gridviewscreen': (context) => const gridviewscreen(),
      },
    );
  }
}
