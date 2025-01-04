import 'package:flutter/material.dart';
import 'package:webproject/view/desktop-view/home-view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ReponsiveLayout(
      desktop:HomeViewDesktop();
      mobile:HomeViewMobile;
      tablet:HomeViewTablet;
    );
  }
}
