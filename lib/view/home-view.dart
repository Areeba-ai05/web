import 'package:flutter/material.dart';
import 'package:webproject/controller/widgets/Responsivelayout.dart';
import 'package:webproject/view/desktop-view/home-view.dart';
import 'package:webproject/view/mobile-view/mobilehomeview.dart';
import 'package:webproject/view/tablet-view/tablethomeview.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ResposiveLayout(
      desktop:HomeViewDesktop(),
      mobile:HomeViewMobile(),
      tablet:HomeViewTablet(),
    );
  }
}
