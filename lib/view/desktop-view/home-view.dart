import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webproject/view/mobile-view/mobilehomeview.dart';

class HomeViewDesktop extends StatefulWidget {
  const HomeViewDesktop({super.key});

  @override
  State<HomeViewDesktop> createState() => _HomeViewDesktopState();
}

class _HomeViewDesktopState extends State<HomeViewDesktop> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.brown),//for chaning background color
                currentAccountPicture: CircleAvatar(),
                accountName: Text('Areeba Iqbal'),
                accountEmail: Text('areeba.seo05@gmail.com'),),
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeViewMobile()));// for page nav
              },
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            )
          ],
        ),
      ),
    appBar:  AppBar(
        backgroundColor: Colors.blue,
        actions: [
          Text('Home'),
          Text('About Me'),
          Text('Skills'),
          Text('Contact Me')
        ],
      ),
        body:Row(
          children: [
            Container(
            height: height*0.9,//double.infinity,
              width:  double.infinity, color: Colors.lightGreen,
                   child: Row(
                     children: [
                       IconButton(onPressed: () async{
                         final whatsappUrl='https://wa.me/+92';
                         await launchUrl(Uri.parse(whatsappUrl));
                       },
                           icon: Icon(Icons.mail)),
                          Center(child: Text('Desktop',style:TextStyle(fontSize: 30,
                          fontWeight: FontWeight.w700,color: Colors.black,),),
                          ),
                     ],
                   ),

                  ),

          ],
        )
    );
  }
}
