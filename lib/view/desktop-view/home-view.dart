import 'package:flutter/material.dart';

class HomeViewDesktop extends StatefulWidget {
  const HomeViewDesktop({super.key});

  @override
  State<HomeViewDesktop> createState() => _HomeViewDesktopState();
}

class _HomeViewDesktopState extends State<HomeViewDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:  AppBar(
        backgroundColor: Colors.black,
        actions: [
          Text('Home'),
          Text('About Me'),
          Text('Skills'),
          Text('Contact Me')
        ],
      ),
        body:Container(
        height: double.infinity, width:  double.infinity, color: Colors.lightGreen,
       child: Center(
         child: Text('Desktop',style:TextStyle(fontSize: 30,
               fontWeight: FontWeight.w700,color: Colors.black,),),
       )//color: Colors.black,
      )
    );
  }
}
