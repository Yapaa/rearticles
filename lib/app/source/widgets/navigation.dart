import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:rearticles/app/modules/Articles/views/articles_view.dart';
import 'package:rearticles/app/modules/Dashboard/views/dashboard_view.dart';
import 'package:rearticles/app/modules/Users/views/users_view.dart';
import 'package:rearticles/app/source/constants/constant.dart';

class NavigationBottomBar extends StatelessWidget {
  const NavigationBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 5,
      color: defaultColor,
      child: Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconTheme(
                    data: IconThemeData(size: 20),
                    child: IconButton(
                      icon: Icon(Icons.library_books),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ArticlesView()));
                      },
                      color: Colors.white,
                    )),
                Text(
                  'Article',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconTheme(
                    data: IconThemeData(size: 20),
                    child: IconButton(
                      icon: Icon(Icons.person),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => UsersView()));
                      },
                      color: Colors.white,
                    )),
                Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class NavigationBottomBar2 extends StatefulWidget {
  const NavigationBottomBar2({super.key});

  @override
  State<NavigationBottomBar2> createState() => _NavigationBottomBar2State();
}

class _NavigationBottomBar2State extends State<NavigationBottomBar2> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _pages = [
    DashboardView(),
    ArticlesView(),
    UsersView(),
  ];

  void _onNavBarTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.blue,
        color: Colors.white,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.grey.shade800,
        gap: 8,
        selectedIndex: _selectedIndex,
        onTabChange: _onNavBarTap,
        tabs: [
          GButton(icon: Icons.home, text: 'Dashboard'),
          GButton(icon: Icons.library_books, text: 'Article'),
          GButton(icon: Icons.person, text: 'Profile'),
        ],
      ),
    );
  }
}