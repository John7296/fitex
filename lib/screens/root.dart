

import 'package:fitex/screens/create_plan_screen.dart';
import 'package:fitex/screens/health_screen.dart';
import 'package:fitex/screens/home_screen.dart';
import 'package:fitex/screens/profile_screen.dart';
import 'package:fitex/screens/view_plan_screen.dart';
import 'package:flutter/material.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int selectedindex = 0;
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              selectedindex = index;
            });
            // pageChanged(index);
          },
          children: [
            HomeScreen(),
            ViewPlanScreen(),
            HealthOverviewScreen(),
            ProfileScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[600],
        currentIndex: selectedindex,
        backgroundColor: const Color(0xff282a2c),
        onTap: selectedPage,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icons/ic_dumbbell.png"),
              size: 30,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/ic_planning.png"),
                size: 25,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/ic_health.png"),
                size: 30,
              ),
              label: ""),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icons/ic_profile.png"),
              size: 30,
            ),
            label: "",
          ),
        ],
        selectedFontSize: 10,
        unselectedFontSize: 10,
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff282a2c),
        isExtended: false,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => OwnPlanScreen()));
        },
        // tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  void selectedPage(int index) {
    setState(() {
      selectedindex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }
}
