import 'package:flutter/material.dart';
import 'package:flutter_app/view/media_query_view.dart';

showSnackBar(BuildContext context, String message, {Color color=Colors.green}) {
  
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      content: Text(message),
      duration: const Duration(seconds: 1),
      behavior: SnackBarBehavior.floating,
    ),
  );
}
