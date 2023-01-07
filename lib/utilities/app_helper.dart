
import 'package:flutter/material.dart';

class AppHelper {
  static navigateTo(context,page){
    Navigator.push(context,PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>  page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        final tween = Tween(begin: begin, end: end);
        final offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      }));
  }

}
