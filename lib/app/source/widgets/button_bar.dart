import 'package:flutter/material.dart';
import 'package:rearticles/app/modules/Articles/views/articles_view.dart';
import 'package:rearticles/app/modules/Dashboard/views/dashboard_view.dart';
import 'package:rearticles/app/modules/Users/views/users_view.dart';

class ButtonBarWidget extends StatefulWidget {
  const ButtonBarWidget({super.key});

  @override
  State<ButtonBarWidget> createState() => _ButtonBarWidgetState();
}

class _ButtonBarWidgetState extends State<ButtonBarWidget> {
int currentIndex = 0;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  final List<Widget> pages = [
    DashboardView(),
    ArticlesView(),
    UsersView(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = currentIndex == 0 ? DashboardView() : currentIndex == 1 ? ArticlesView():UsersView(); 
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen,),
    );
  }
}