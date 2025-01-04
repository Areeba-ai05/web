import 'package:flutter/material.dart';

class ResposiveLayout extends StatelessWidget {
  Widget tablet;
  Widget mobile;
  Widget desktop;
   ResposiveLayout({super.key, required this.desktop, required this.mobile, required this.tablet});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if (constraints.maxWidth<550) return mobile;
      else if(constraints.maxWidth<1100) return tablet;
      else return desktop;
    });
  }
}
